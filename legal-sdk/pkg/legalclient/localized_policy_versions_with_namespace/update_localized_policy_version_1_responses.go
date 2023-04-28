// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions_with_namespace

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

// UpdateLocalizedPolicyVersion1Reader is a Reader for the UpdateLocalizedPolicyVersion1 structure.
type UpdateLocalizedPolicyVersion1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateLocalizedPolicyVersion1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateLocalizedPolicyVersion1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateLocalizedPolicyVersion1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateLocalizedPolicyVersion1OK creates a UpdateLocalizedPolicyVersion1OK with default headers values
func NewUpdateLocalizedPolicyVersion1OK() *UpdateLocalizedPolicyVersion1OK {
	return &UpdateLocalizedPolicyVersion1OK{}
}

/*UpdateLocalizedPolicyVersion1OK handles this case with default header values.

  successful operation
*/
type UpdateLocalizedPolicyVersion1OK struct {
	Payload *legalclientmodels.UpdateLocalizedPolicyVersionResponse
}

func (o *UpdateLocalizedPolicyVersion1OK) Error() string {
	return fmt.Sprintf("[PUT /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}][%d] updateLocalizedPolicyVersion1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdateLocalizedPolicyVersion1OK) ToJSONString() string {
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

func (o *UpdateLocalizedPolicyVersion1OK) GetPayload() *legalclientmodels.UpdateLocalizedPolicyVersionResponse {
	return o.Payload
}

func (o *UpdateLocalizedPolicyVersion1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewUpdateLocalizedPolicyVersion1BadRequest creates a UpdateLocalizedPolicyVersion1BadRequest with default headers values
func NewUpdateLocalizedPolicyVersion1BadRequest() *UpdateLocalizedPolicyVersion1BadRequest {
	return &UpdateLocalizedPolicyVersion1BadRequest{}
}

/*UpdateLocalizedPolicyVersion1BadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr></table>
*/
type UpdateLocalizedPolicyVersion1BadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *UpdateLocalizedPolicyVersion1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}][%d] updateLocalizedPolicyVersion1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateLocalizedPolicyVersion1BadRequest) ToJSONString() string {
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

func (o *UpdateLocalizedPolicyVersion1BadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateLocalizedPolicyVersion1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
