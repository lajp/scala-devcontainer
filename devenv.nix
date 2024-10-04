{pkgs, ...}: {
  languages.scala = {
    enable = true;
    sbt.enable = true;
  };
  packages = with pkgs; [
    xorg.libX11
    xorg.libXext
    xorg.libXtst
  ];

  devcontainer = {
    enable = true;
    settings = {
      #updateContentCommand = "devenv build";
      customizations.vscode.extensions = [
        "scalameta.metals"
        "scala-lang.scala"
        "mkhl.direnv"
      ];
    };
  };
}
