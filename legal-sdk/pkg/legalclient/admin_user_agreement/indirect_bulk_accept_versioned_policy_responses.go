// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_user_agreement

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

// IndirectBulkAcceptVersionedPolicyReader is a Reader for the IndirectBulkAcceptVersionedPolicy structure.
type IndirectBulkAcceptVersionedPolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *IndirectBulkAcceptVersionedPolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewIndirectBulkAcceptVersionedPolicyCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/namespaces/{namespace}/users/{userId}/agreements/policies returns an error %d: %s", response.Code(), string(data))
	}
}

// NewIndirectBulkAcceptVersionedPolicyCreated creates a IndirectBulkAcceptVersionedPolicyCreated with default headers values
func NewIndirectBulkAcceptVersionedPolicyCreated() *IndirectBulkAcceptVersionedPolicyCreated {
	return &IndirectBulkAcceptVersionedPolicyCreated{}
}

/*IndirectBulkAcceptVersionedPolicyCreated handles this case with default header values.

  successful operation
*/
type IndirectBulkAcceptVersionedPolicyCreated struct {
	Payload *legalclientmodels.AcceptAgreementResponse
}

func (o *IndirectBulkAcceptVersionedPolicyCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/users/{userId}/agreements/policies][%d] indirectBulkAcceptVersionedPolicyCreated  %+v", 201, o.ToJSONString())
}

func (o *IndirectBulkAcceptVersionedPolicyCreated) ToJSONString() string {
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

func (o *IndirectBulkAcceptVersionedPolicyCreated) GetPayload() *legalclientmodels.AcceptAgreementResponse {
	return o.Payload
}

func (o *IndirectBulkAcceptVersionedPolicyCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
