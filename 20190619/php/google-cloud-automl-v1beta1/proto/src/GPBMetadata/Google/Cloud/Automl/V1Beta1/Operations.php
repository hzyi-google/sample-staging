<?php
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/operations.proto

namespace GPBMetadata\Google\Cloud\Automl\V1Beta1;

class Operations
{
    public static $is_initialized = false;

    public static function initOnce() {
        $pool = \Google\Protobuf\Internal\DescriptorPool::getGeneratedPool();

        if (static::$is_initialized == true) {
          return;
        }
        \GPBMetadata\Google\Cloud\Automl\V1Beta1\Io::initOnce();
        \GPBMetadata\Google\Cloud\Automl\V1Beta1\Model::initOnce();
        \GPBMetadata\Google\Cloud\Automl\V1Beta1\ModelEvaluation::initOnce();
        \GPBMetadata\Google\Protobuf\GPBEmpty::initOnce();
        \GPBMetadata\Google\Protobuf\Timestamp::initOnce();
        \GPBMetadata\Google\Rpc\Status::initOnce();
        \GPBMetadata\Google\Api\Annotations::initOnce();
        $pool->internalAddGeneratedFile(hex2bin(
            "0abd140a2c676f6f676c652f636c6f75642f6175746f6d6c2f7631626574" .
            "61312f6f7065726174696f6e732e70726f746f121b676f6f676c652e636c" .
            "6f75642e6175746f6d6c2e763162657461311a27676f6f676c652f636c6f" .
            "75642f6175746f6d6c2f763162657461312f6d6f64656c2e70726f746f1a" .
            "32676f6f676c652f636c6f75642f6175746f6d6c2f763162657461312f6d" .
            "6f64656c5f6576616c756174696f6e2e70726f746f1a1b676f6f676c652f" .
            "70726f746f6275662f656d7074792e70726f746f1a1f676f6f676c652f70" .
            "726f746f6275662f74696d657374616d702e70726f746f1a17676f6f676c" .
            "652f7270632f7374617475732e70726f746f1a1c676f6f676c652f617069" .
            "2f616e6e6f746174696f6e732e70726f746f228b080a114f706572617469" .
            "6f6e4d65746164617461124e0a0e64656c6574655f64657461696c731808" .
            "2001280b32342e676f6f676c652e636c6f75642e6175746f6d6c2e763162" .
            "657461312e44656c6574654f7065726174696f6e4d657461646174614800" .
            "12590a146465706c6f795f6d6f64656c5f64657461696c7318182001280b" .
            "32392e676f6f676c652e636c6f75642e6175746f6d6c2e76316265746131" .
            "2e4465706c6f794d6f64656c4f7065726174696f6e4d6574616461746148" .
            "00125d0a16756e6465706c6f795f6d6f64656c5f64657461696c73181920" .
            "01280b323b2e676f6f676c652e636c6f75642e6175746f6d6c2e76316265" .
            "7461312e556e6465706c6f794d6f64656c4f7065726174696f6e4d657461" .
            "64617461480012590a146372656174655f6d6f64656c5f64657461696c73" .
            "180a2001280b32392e676f6f676c652e636c6f75642e6175746f6d6c2e76" .
            "3162657461312e4372656174654d6f64656c4f7065726174696f6e4d6574" .
            "6164617461480012570a13696d706f72745f646174615f64657461696c73" .
            "180f2001280b32382e676f6f676c652e636c6f75642e6175746f6d6c2e76" .
            "3162657461312e496d706f7274446174614f7065726174696f6e4d657461" .
            "646174614800125b0a1562617463685f707265646963745f64657461696c" .
            "7318102001280b323a2e676f6f676c652e636c6f75642e6175746f6d6c2e" .
            "763162657461312e4261746368507265646963744f7065726174696f6e4d" .
            "65746164617461480012570a136578706f72745f646174615f6465746169" .
            "6c7318152001280b32382e676f6f676c652e636c6f75642e6175746f6d6c" .
            "2e763162657461312e4578706f7274446174614f7065726174696f6e4d65" .
            "746164617461480012590a146578706f72745f6d6f64656c5f6465746169" .
            "6c7318162001280b32392e676f6f676c652e636c6f75642e6175746f6d6c" .
            "2e763162657461312e4578706f72744d6f64656c4f7065726174696f6e4d" .
            "65746164617461480012720a216578706f72745f6576616c75617465645f" .
            "6578616d706c65735f64657461696c73181a2001280b32452e676f6f676c" .
            "652e636c6f75642e6175746f6d6c2e763162657461312e4578706f727445" .
            "76616c75617465644578616d706c65734f7065726174696f6e4d65746164" .
            "617461480012180a1070726f67726573735f70657263656e74180d200128" .
            "05122c0a107061727469616c5f6661696c7572657318022003280b32122e" .
            "676f6f676c652e7270632e537461747573122f0a0b6372656174655f7469" .
            "6d6518032001280b321a2e676f6f676c652e70726f746f6275662e54696d" .
            "657374616d70122f0a0b7570646174655f74696d6518042001280b321a2e" .
            "676f6f676c652e70726f746f6275662e54696d657374616d7042090a0764" .
            "657461696c7322190a1744656c6574654f7065726174696f6e4d65746164" .
            "617461221e0a1c4465706c6f794d6f64656c4f7065726174696f6e4d6574" .
            "616461746122200a1e556e6465706c6f794d6f64656c4f7065726174696f" .
            "6e4d65746164617461221e0a1c4372656174654d6f64656c4f7065726174" .
            "696f6e4d65746164617461221d0a1b496d706f7274446174614f70657261" .
            "74696f6e4d6574616461746122ef010a1b4578706f7274446174614f7065" .
            "726174696f6e4d6574616461746112620a0b6f75747075745f696e666f18" .
            "012001280b324d2e676f6f676c652e636c6f75642e6175746f6d6c2e7631" .
            "62657461312e4578706f7274446174614f7065726174696f6e4d65746164" .
            "6174612e4578706f7274446174614f7574707574496e666f1a6c0a144578" .
            "706f7274446174614f7574707574496e666f121e0a146763735f6f757470" .
            "75745f6469726563746f7279180120012809480012210a17626967717565" .
            "72795f6f75747075745f64617461736574180220012809480042110a0f6f" .
            "75747075745f6c6f636174696f6e22c3020a1d4261746368507265646963" .
            "744f7065726174696f6e4d65746164617461124a0a0c696e7075745f636f" .
            "6e66696718012001280b32342e676f6f676c652e636c6f75642e6175746f" .
            "6d6c2e763162657461312e426174636850726564696374496e707574436f" .
            "6e66696712660a0b6f75747075745f696e666f18022001280b32512e676f" .
            "6f676c652e636c6f75642e6175746f6d6c2e763162657461312e42617463" .
            "68507265646963744f7065726174696f6e4d657461646174612e42617463" .
            "68507265646963744f7574707574496e666f1a6e0a164261746368507265" .
            "646963744f7574707574496e666f121e0a146763735f6f75747075745f64" .
            "69726563746f7279180120012809480012210a1762696771756572795f6f" .
            "75747075745f64617461736574180220012809480042110a0f6f75747075" .
            "745f6c6f636174696f6e22bb010a1c4578706f72744d6f64656c4f706572" .
            "6174696f6e4d6574616461746112640a0b6f75747075745f696e666f1802" .
            "2001280b324f2e676f6f676c652e636c6f75642e6175746f6d6c2e763162" .
            "657461312e4578706f72744d6f64656c4f7065726174696f6e4d65746164" .
            "6174612e4578706f72744d6f64656c4f7574707574496e666f1a350a1545" .
            "78706f72744d6f64656c4f7574707574496e666f121c0a146763735f6f75" .
            "747075745f6469726563746f727918012001280922ee010a284578706f72" .
            "744576616c75617465644578616d706c65734f7065726174696f6e4d6574" .
            "6164617461127c0a0b6f75747075745f696e666f18022001280b32672e67" .
            "6f6f676c652e636c6f75642e6175746f6d6c2e763162657461312e457870" .
            "6f72744576616c75617465644578616d706c65734f7065726174696f6e4d" .
            "657461646174612e4578706f72744576616c75617465644578616d706c65" .
            "734f7574707574496e666f1a440a214578706f72744576616c7561746564" .
            "4578616d706c65734f7574707574496e666f121f0a176269677175657279" .
            "5f6f75747075745f646174617365741802200128094284010a1f636f6d2e" .
            "676f6f676c652e636c6f75642e6175746f6d6c2e7631626574613150015a" .
            "41676f6f676c652e676f6c616e672e6f72672f67656e70726f746f2f676f" .
            "6f676c65617069732f636c6f75642f6175746f6d6c2f763162657461313b" .
            "6175746f6d6cca021b476f6f676c655c436c6f75645c4175746f4d6c5c56" .
            "316265746131620670726f746f33"
        ), true);

        static::$is_initialized = true;
    }
}
