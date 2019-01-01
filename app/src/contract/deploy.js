import { bytecode, abi } from './EscrowContract.json';
import { web3 } from './web3Util.js';

const EscrowContract = new web3.eth.Contract(abi);

const deploy = (value, arbiterAddress, beneficiaryAddress, depositorAddress) => {
    return EscrowContract.deploy({
        arguments: [arbiterAddress, beneficiaryAddress],
        value,
        data: bytecode
    }).send({
        from: depositorAddress,
    })
}

export default deploy;