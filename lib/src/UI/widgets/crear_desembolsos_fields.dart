import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../blocs/crear_desembolso/crear_desembolso_bloc.dart';

class BeneficiarioInput extends StatefulWidget {
  const BeneficiarioInput({
    Key? key,
    required CrearDesembolsoBloc crearDesembolsoBloc,
  })  : _crearDesembolsoBloc = crearDesembolsoBloc,
        super(key: key);

  final CrearDesembolsoBloc _crearDesembolsoBloc;
  @override
  State<BeneficiarioInput> createState() => _BeneficiarioInputState();
}

class _BeneficiarioInputState extends State<BeneficiarioInput> {
  late final FocusNode _focusNode;
  late final TextEditingController _controller;
  @override
  void initState() {
    _focusNode = FocusNode();
    _controller = TextEditingController();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        widget._crearDesembolsoBloc.add(
          OnBeneficiarioLostFocus(
            beneficiario: _controller.text,
          ),
        );
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CrearDesembolsoBloc, CrearDesembolsoState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            focusNode: _focusNode,
            controller: _controller,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              label: const Text('Beneficiario'),
              errorText:
                  state.beneficiario!.isPure || state.beneficiario!.isValid
                      ? null
                      : 'Invalido',
            ),
          ),
        );
      },
    );
  }
}

class RncInput extends StatefulWidget {
  const RncInput({Key? key, required CrearDesembolsoBloc crearDesembolsoBloc})
      : _crearDesembolsoBloc = crearDesembolsoBloc,
        super(key: key);
  final CrearDesembolsoBloc _crearDesembolsoBloc;

  @override
  State<RncInput> createState() => _RncInputState();
}

class _RncInputState extends State<RncInput> {
  late final FocusNode _focusNode;
  late final TextEditingController _controller;

  @override
  void initState() {
    _focusNode = FocusNode();
    _controller = TextEditingController();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        widget._crearDesembolsoBloc.add(
          OnRncLostFocus(
            rnc: _controller.text,
          ),
        );
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CrearDesembolsoBloc, CrearDesembolsoState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            focusNode: _focusNode,
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              label: const Text('RNC'),
              errorText:
                  state.rnc!.isPure || state.rnc!.isValid ? null : 'Invalido',
              prefixIcon: const Icon(Icons.perm_identity_sharp),
            ),
          ),
        );
      },
    );
  }
}
