import { StyleSheet, View } from 'react-native';
import { RnMaskedTextInputView } from 'rn-masked-text-input';

export default function App() {
  return (
    <View style={styles.container}>
      <RnMaskedTextInputView color="#32a852" style={styles.box} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
