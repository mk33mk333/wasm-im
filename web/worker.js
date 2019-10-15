var Module = {
    locateFile: _ => 'wasm/wasm-im.wasm',
    noInitialRun: true,
    moduleLoaded: false,
    messagesToProcess: [],
    print: text => {
        console.log(text)
    },
    printErr: text => {
        console.error(text);
    }
}
Module.onRuntimeInitialized = function () {
    Module.moduleLoaded = true
    FS.mkdir('/im')
    FS.currentPath = '/im'
    console.log('模块加载完成',Module);
    postMessage({
        type: "ready"
    });
    // getImg(Module);
}
onmessage = function(e) {
    if(Module.moduleLoaded){
        if(e.data.type == 'cmd'){
            var command = e.data.data.command;
            var files = e.data.data.files;
            var back = e.data.data.back;
            var cid = e.data.data.cid;
            if(files.length){
                Promise.all(files.map(file=>{
                    var url = file;
                    if(!file.match(/^http/))url = `img/${file}`
                    return fetch(url).then(data=>{
                        console.log(data)
                        if(data.status != 200){
                            throw `fetch ${file} error: ${data.statusText}`
                        }else{
                            return data.arrayBuffer()
                        }
                    }).then(ab=>{
                        FS.writeFile(file,new Uint8Array(ab))
                        return true
                    })
                })).then(_=>{
                    Module.callMain(command);
                    var ab = FS.readFile(back).buffer
                    postMessage({ type:'work', data:ab , cid:cid}, [ab])
                }).catch(err=>{
                    console.log(err);
                    postMessage({ type:'error', data:err , cid:cid})
                })
            }

        }
    }
}
importScripts('wasm/wasm-im.js'); 