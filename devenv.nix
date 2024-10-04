{
  languages.scala.enable = true;
  devcontainer = {
    enable = true;
    settings = {
      options.updateContentCommand = "devenv build";
      customizations.vscode.extensions = [
        "scalameta.metals"
        "scala-lang.scala"
      ];
    };
  };
}
