#!/bin/bash

# This script has been created based on the instructions at
# https://devdocs.jabref.org/getting-into-the-code/guidelines-for-setting-up-a-local-workspace,
# the output of `./gradlew -d run` and the contents of build/scripts/JabRef in the build
# directory.

ROOT=/usr/share/java/jabref

/usr/bin/archlinux-java-run -a 16 -- \
--add-exports javafx.controls/com.sun.javafx.scene.control=org.controlsfx.controls \
--add-exports org.controlsfx.controls/impl.org.controlsfx.skin=org.jabref \
--add-exports javafx.controls/com.sun.javafx.scene.control.behavior=org.controlsfx.controls \
--add-exports javafx.graphics/com.sun.javafx.scene=org.controlsfx.controls \
--add-exports javafx.graphics/com.sun.javafx.scene.traversal=org.controlsfx.controls \
--add-exports javafx.graphics/com.sun.javafx.css=org.controlsfx.controls \
--add-exports javafx.controls/com.sun.javafx.scene.control.inputmap=org.controlsfx.controls \
--add-exports javafx.base/com.sun.javafx.event=org.controlsfx.controls \
--add-exports javafx.base/com.sun.javafx.collections=org.controlsfx.controls \
--add-exports javafx.base/com.sun.javafx.runtime=org.controlsfx.controls \
--add-exports javafx.web/com.sun.webkit=org.controlsfx.controls \
--add-opens javafx.controls/javafx.scene.control=org.jabref \
--add-opens org.controlsfx.controls/org.controlsfx.control.textfield=org.jabref \
--add-opens javafx.controls/com.sun.javafx.scene.control=org.jabref \
--add-opens javafx.controls/javafx.scene.control.skin=org.controlsfx.controls \
--add-opens javafx.graphics/javafx.scene=org.controlsfx.controls \
--add-opens javafx.controls/com.sun.javafx.scene.control.behavior=com.jfoenix \
--add-opens javafx.base/com.sun.javafx.binding=com.jfoenix \
--add-opens javafx.graphics/com.sun.javafx.stage=com.jfoenix \
--add-opens javafx.base/com.sun.javafx.event=com.jfoenix \
--module-path ${ROOT}/lib \
--patch-module org.jabref=${ROOT}/resources/main \
--module org.jabref/org.jabref.gui.JabRefLauncher \
"$@"
