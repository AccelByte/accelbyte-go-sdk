// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policy_versions

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

// OldRetrieveSinglePolicyVersionReader is a Reader for the OldRetrieveSinglePolicyVersion structure.
type OldRetrieveSinglePolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldRetrieveSinglePolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldRetrieveSinglePolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewOldRetrieveSinglePolicyVersionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/policies/{policyId}/versions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldRetrieveSinglePolicyVersionOK creates a OldRetrieveSinglePolicyVersionOK with default headers values
func NewOldRetrieveSinglePolicyVersionOK() *OldRetrieveSinglePolicyVersionOK {
	return &OldRetrieveSinglePolicyVersionOK{}
}

/*OldRetrieveSinglePolicyVersionOK handles this case with default header values.

  successful operation
*/
type OldRetrieveSinglePolicyVersionOK struct {
	Payload []*legalclientmodels.RetrievePolicyVersionResponse
}

func (o *OldRetrieveSinglePolicyVersionOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/policies/{policyId}/versions][%d] oldRetrieveSinglePolicyVersionOK  %+v", 200, o.ToJSONString())
}

func (o *OldRetrieveSinglePolicyVersionOK) ToJSONString() string {
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

func (o *OldRetrieveSinglePolicyVersionOK) GetPayload() []*legalclientmodels.RetrievePolicyVersionResponse {
	return o.Payload
}

func (o *OldRetrieveSinglePolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOldRetrieveSinglePolicyVersionNotFound creates a OldRetrieveSinglePolicyVersionNotFound with default headers values
func NewOldRetrieveSinglePolicyVersionNotFound() *OldRetrieveSinglePolicyVersionNotFound {
	return &OldRetrieveSinglePolicyVersionNotFound{}
}

/*OldRetrieveSinglePolicyVersionNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40036</td><td>errors.net.accelbyte.platform.legal.policy_version_id_not_found</td></tr></table>
*/
type OldRetrieveSinglePolicyVersionNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldRetrieveSinglePolicyVersionNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/policies/{policyId}/versions][%d] oldRetrieveSinglePolicyVersionNotFound  %+v", 404, o.ToJSONString())
}

func (o *OldRetrieveSinglePolicyVersionNotFound) ToJSONString() string {
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

func (o *OldRetrieveSinglePolicyVersionNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldRetrieveSinglePolicyVersionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
