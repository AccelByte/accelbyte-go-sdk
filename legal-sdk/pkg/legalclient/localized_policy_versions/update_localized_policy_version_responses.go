// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions

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

// UpdateLocalizedPolicyVersionReader is a Reader for the UpdateLocalizedPolicyVersion structure.
type UpdateLocalizedPolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateLocalizedPolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateLocalizedPolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateLocalizedPolicyVersionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /agreement/admin/localized-policy-versions/{localizedPolicyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateLocalizedPolicyVersionOK creates a UpdateLocalizedPolicyVersionOK with default headers values
func NewUpdateLocalizedPolicyVersionOK() *UpdateLocalizedPolicyVersionOK {
	return &UpdateLocalizedPolicyVersionOK{}
}

/*UpdateLocalizedPolicyVersionOK handles this case with default header values.

  successful operation
*/
type UpdateLocalizedPolicyVersionOK struct {
	Payload *legalclientmodels.UpdateLocalizedPolicyVersionResponse
}

func (o *UpdateLocalizedPolicyVersionOK) Error() string {
	return fmt.Sprintf("[PUT /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}][%d] updateLocalizedPolicyVersionOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateLocalizedPolicyVersionOK) ToJSONString() string {
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

func (o *UpdateLocalizedPolicyVersionOK) GetPayload() *legalclientmodels.UpdateLocalizedPolicyVersionResponse {
	return o.Payload
}

func (o *UpdateLocalizedPolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.UpdateLocalizedPolicyVersionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateLocalizedPolicyVersionBadRequest creates a UpdateLocalizedPolicyVersionBadRequest with default headers values
func NewUpdateLocalizedPolicyVersionBadRequest() *UpdateLocalizedPolicyVersionBadRequest {
	return &UpdateLocalizedPolicyVersionBadRequest{}
}

/*UpdateLocalizedPolicyVersionBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr></table>
*/
type UpdateLocalizedPolicyVersionBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *UpdateLocalizedPolicyVersionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}][%d] updateLocalizedPolicyVersionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateLocalizedPolicyVersionBadRequest) ToJSONString() string {
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

func (o *UpdateLocalizedPolicyVersionBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateLocalizedPolicyVersionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
