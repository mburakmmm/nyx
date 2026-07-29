# Runnable P1c / C2 repro

```sh
cd docs/repro-p1c-c2/repro-pkg
git init && git add -A && git commit -m "repro"

cd ../consumer
# fix path if needed in nox.json
noxc fetch

noxc run c2_import_inline.nox    # expect exit 139
noxc run c2_import_local.nox     # expect OK
noxc run c2_import_viewish.nox   # expect exit 139
noxc run p1c_nested.nox          # expect codegen error
noxc run p1c_control.nox         # expect OK
```

See `../NOX_REPRO_P1C_C2.md` for analysis.
