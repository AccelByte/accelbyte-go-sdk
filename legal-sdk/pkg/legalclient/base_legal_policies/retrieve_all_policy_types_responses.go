// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// RetrieveAllPolicyTypesReader is a Reader for the RetrieveAllPolicyTypes structure.
type RetrieveAllPolicyTypesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveAllPolicyTypesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveAllPolicyTypesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/policy-types returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveAllPolicyTypesOK creates a RetrieveAllPolicyTypesOK with default headers values
func NewRetrieveAllPolicyTypesOK() *RetrieveAllPolicyTypesOK {
	return &RetrieveAllPolicyTypesOK{}
}

/*RetrieveAllPolicyTypesOK handles this case with default header values.

  successful operation
*/
type RetrieveAllPolicyTypesOK struct {
	Payload []*legalclientmodels.RetrievePolicyTypeResponse
}

func (o *RetrieveAllPolicyTypesOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/policy-types][%d] retrieveAllPolicyTypesOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveAllPolicyTypesOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *RetrieveAllPolicyTypesOK) GetPayload() []*legalclientmodels.RetrievePolicyTypeResponse {
	return o.Payload
}

func (o *RetrieveAllPolicyTypesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
