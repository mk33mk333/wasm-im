var  stdout = []
var  stderr = []
var  exitCode = 0
if (typeof Module == 'undefined') {
    Module = {
        noInitialRun: true,
        moduleLoaded: false,
        messagesToProcess: [],
        print: text => {
            stdout.push(text)
            console.log(text)
        },
        printErr: text => {
            stderr.push(text)
            console.error(text);
        }
    }
    Module.onRuntimeInitialized = function () {
        Module.moduleLoaded = true
        FS.mkdir('/im')
        FS.currentPath = '/im'
        console.log('模块加载完成',Module);
        getImg(Module);
    }

    async function getImg(Module){
        FS.writeFile('1.jpg', new Uint8Array(await(await fetch("1.jpg")).arrayBuffer()))
        FS.writeFile('2.jpg', new Uint8Array(await(await fetch("2.jpg")).arrayBuffer()))
        FS.writeFile('3.jpg', new Uint8Array(await(await fetch("3.jpg")).arrayBuffer()))
        Module.callMain(command)
        var gif = FS.readFile('animation.gif')
        var gifBlob = new Blob([gif]);
        var img = document.createElement('img');
        img.src = URL.createObjectURL(gifBlob);
        document.body.appendChild(img)
    }
}