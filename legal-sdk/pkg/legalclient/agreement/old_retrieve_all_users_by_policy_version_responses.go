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

// OldRetrieveAllUsersByPolicyVersionReader is a Reader for the OldRetrieveAllUsersByPolicyVersion structure.
type OldRetrieveAllUsersByPolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldRetrieveAllUsersByPolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldRetrieveAllUsersByPolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewOldRetrieveAllUsersByPolicyVersionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/agreements/policy-versions/users returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldRetrieveAllUsersByPolicyVersionOK creates a OldRetrieveAllUsersByPolicyVersionOK with default headers values
func NewOldRetrieveAllUsersByPolicyVersionOK() *OldRetrieveAllUsersByPolicyVersionOK {
	return &OldRetrieveAllUsersByPolicyVersionOK{}
}

/*OldRetrieveAllUsersByPolicyVersionOK handles this case with default header values.

  successful operation
*/
type OldRetrieveAllUsersByPolicyVersionOK struct {
	Payload *legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse
}

func (o *OldRetrieveAllUsersByPolicyVersionOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/agreements/policy-versions/users][%d] oldRetrieveAllUsersByPolicyVersionOK  %+v", 200, o.ToJSONString())
}

func (o *OldRetrieveAllUsersByPolicyVersionOK) ToJSONString() string {
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

func (o *OldRetrieveAllUsersByPolicyVersionOK) GetPayload() *legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse {
	return o.Payload
}

func (o *OldRetrieveAllUsersByPolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.PagedRetrieveUserAcceptedAgreementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewOldRetrieveAllUsersByPolicyVersionNotFound creates a OldRetrieveAllUsersByPolicyVersionNotFound with default headers values
func NewOldRetrieveAllUsersByPolicyVersionNotFound() *OldRetrieveAllUsersByPolicyVersionNotFound {
	return &OldRetrieveAllUsersByPolicyVersionNotFound{}
}

/*OldRetrieveAllUsersByPolicyVersionNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.policy_version_not_found</td></tr></table>
*/
type OldRetrieveAllUsersByPolicyVersionNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldRetrieveAllUsersByPolicyVersionNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/agreements/policy-versions/users][%d] oldRetrieveAllUsersByPolicyVersionNotFound  %+v", 404, o.ToJSONString())
}

func (o *OldRetrieveAllUsersByPolicyVersionNotFound) ToJSONString() string {
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

func (o *OldRetrieveAllUsersByPolicyVersionNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldRetrieveAllUsersByPolicyVersionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
