function Logger(name) {
    this.ID = name;
    var that = this;
    this.Log = function (str) {
        $(that.ID).append(str + "<br>");
    }
}