cmake_minimum_required(VERSION 3.16)

project(Authorization1Mar VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appAuthorization1Mar
    main.cpp
)

qt_add_qml_module(appAuthorization1Mar
    URI Authorization1Mar
    VERSION 1.0
    QML_FILES Main.qml
    QML_FILES AuthorizationPage.qml
    QML_FILES ChatsView.qml
    QML_FILES RegistrationPage.qml
    QML_FILES UsersChatPg.qml
    RESOURCES hide.png visible.png
    RESOURCES clearLogo.png
    RESOURCES anonymous.png
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appAuthorization1Mar PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appAuthorization1Mar
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appAuthorization1Mar
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appAuthorization1Mar
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
