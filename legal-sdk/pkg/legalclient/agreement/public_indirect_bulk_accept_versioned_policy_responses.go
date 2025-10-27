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

// PublicIndirectBulkAcceptVersionedPolicyReader is a Reader for the PublicIndirectBulkAcceptVersionedPolicy structure.
type PublicIndirectBulkAcceptVersionedPolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicIndirectBulkAcceptVersionedPolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicIndirectBulkAcceptVersionedPolicyCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicIndirectBulkAcceptVersionedPolicyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/public/agreements/policies/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicIndirectBulkAcceptVersionedPolicyCreated creates a PublicIndirectBulkAcceptVersionedPolicyCreated with default headers values
func NewPublicIndirectBulkAcceptVersionedPolicyCreated() *PublicIndirectBulkAcceptVersionedPolicyCreated {
	return &PublicIndirectBulkAcceptVersionedPolicyCreated{}
}

/*PublicIndirectBulkAcceptVersionedPolicyCreated handles this case with default header values.

  successful operation
*/
type PublicIndirectBulkAcceptVersionedPolicyCreated struct {
	Payload *legalclientmodels.AcceptAgreementResponse
}

func (o *PublicIndirectBulkAcceptVersionedPolicyCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/public/agreements/policies/users/{userId}][%d] publicIndirectBulkAcceptVersionedPolicyCreated  %+v", 201, o.ToJSONString())
}

func (o *PublicIndirectBulkAcceptVersionedPolicyCreated) ToJSONString() string {
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

func (o *PublicIndirectBulkAcceptVersionedPolicyCreated) GetPayload() *legalclientmodels.AcceptAgreementResponse {
	return o.Payload
}

func (o *PublicIndirectBulkAcceptVersionedPolicyCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicIndirectBulkAcceptVersionedPolicyNotFound creates a PublicIndirectBulkAcceptVersionedPolicyNotFound with default headers values
func NewPublicIndirectBulkAcceptVersionedPolicyNotFound() *PublicIndirectBulkAcceptVersionedPolicyNotFound {
	return &PublicIndirectBulkAcceptVersionedPolicyNotFound{}
}

/*PublicIndirectBulkAcceptVersionedPolicyNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.policy_version_not_found</td></tr></table>
*/
type PublicIndirectBulkAcceptVersionedPolicyNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *PublicIndirectBulkAcceptVersionedPolicyNotFound) Error() string {
	return fmt.Sprintf("[POST /agreement/public/agreements/policies/users/{userId}][%d] publicIndirectBulkAcceptVersionedPolicyNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicIndirectBulkAcceptVersionedPolicyNotFound) ToJSONString() string {
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

func (o *PublicIndirectBulkAcceptVersionedPolicyNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicIndirectBulkAcceptVersionedPolicyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
