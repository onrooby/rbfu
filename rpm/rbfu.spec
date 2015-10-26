%define name rbfu
%define version 2.0.2
%define release 1

BuildRoot: %{_tmppath}/rbfu-root
BuildArch: noarch

Source0: https://raw.githubusercontent.com/onrooby/%{name}/v%{version}/bin/rbfu
Summary: Minimal Ruby Version Manager
Name: %{name}
Version: %{version}
Release: %{release}
License: MIT

%description
rbfu is a simple tool that manages multiple installations
of Ruby and allows you to switch between them on the fly.

%prep
cp %{SOURCE0} .

%build
exit 0

%install
rm -rf %{buildroot}
mkdir -p %{buildroot}%{_bindir}
cp %{_builddir}/rbfu %{buildroot}%{_bindir}

%files
%defattr(-,root,root)
%attr(0755,root,root) %{_bindir}/rbfu
