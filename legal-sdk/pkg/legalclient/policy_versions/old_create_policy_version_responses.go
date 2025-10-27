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

// OldCreatePolicyVersionReader is a Reader for the OldCreatePolicyVersion structure.
type OldCreatePolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldCreatePolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewOldCreatePolicyVersionCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewOldCreatePolicyVersionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/policies/{policyId}/versions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldCreatePolicyVersionCreated creates a OldCreatePolicyVersionCreated with default headers values
func NewOldCreatePolicyVersionCreated() *OldCreatePolicyVersionCreated {
	return &OldCreatePolicyVersionCreated{}
}

/*OldCreatePolicyVersionCreated handles this case with default header values.

  successful operation
*/
type OldCreatePolicyVersionCreated struct {
	Payload *legalclientmodels.CreatePolicyVersionResponse
}

func (o *OldCreatePolicyVersionCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/policies/{policyId}/versions][%d] oldCreatePolicyVersionCreated  %+v", 201, o.ToJSONString())
}

func (o *OldCreatePolicyVersionCreated) ToJSONString() string {
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

func (o *OldCreatePolicyVersionCreated) GetPayload() *legalclientmodels.CreatePolicyVersionResponse {
	return o.Payload
}

func (o *OldCreatePolicyVersionCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.CreatePolicyVersionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewOldCreatePolicyVersionBadRequest creates a OldCreatePolicyVersionBadRequest with default headers values
func NewOldCreatePolicyVersionBadRequest() *OldCreatePolicyVersionBadRequest {
	return &OldCreatePolicyVersionBadRequest{}
}

/*OldCreatePolicyVersionBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40033</td><td>errors.net.accelbyte.platform.legal.invalid_policy</td></tr></table>
*/
type OldCreatePolicyVersionBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldCreatePolicyVersionBadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/policies/{policyId}/versions][%d] oldCreatePolicyVersionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *OldCreatePolicyVersionBadRequest) ToJSONString() string {
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

func (o *OldCreatePolicyVersionBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldCreatePolicyVersionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
