// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement

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

// IndirectBulkAcceptVersionedPolicyV2Reader is a Reader for the IndirectBulkAcceptVersionedPolicyV2 structure.
type IndirectBulkAcceptVersionedPolicyV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *IndirectBulkAcceptVersionedPolicyV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewIndirectBulkAcceptVersionedPolicyV2Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewIndirectBulkAcceptVersionedPolicyV2Created creates a IndirectBulkAcceptVersionedPolicyV2Created with default headers values
func NewIndirectBulkAcceptVersionedPolicyV2Created() *IndirectBulkAcceptVersionedPolicyV2Created {
	return &IndirectBulkAcceptVersionedPolicyV2Created{}
}

/*IndirectBulkAcceptVersionedPolicyV2Created handles this case with default header values.

  successful operation
*/
type IndirectBulkAcceptVersionedPolicyV2Created struct {
	Payload *legalclientmodels.AcceptAgreementResponse
}

func (o *IndirectBulkAcceptVersionedPolicyV2Created) Error() string {
	return fmt.Sprintf("[POST /agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}][%d] indirectBulkAcceptVersionedPolicyV2Created  %+v", 201, o.ToJSONString())
}

func (o *IndirectBulkAcceptVersionedPolicyV2Created) ToJSONString() string {
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

func (o *IndirectBulkAcceptVersionedPolicyV2Created) GetPayload() *legalclientmodels.AcceptAgreementResponse {
	return o.Payload
}

func (o *IndirectBulkAcceptVersionedPolicyV2Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.AcceptAgreementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
