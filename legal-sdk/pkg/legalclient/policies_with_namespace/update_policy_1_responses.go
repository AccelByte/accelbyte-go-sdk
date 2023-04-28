// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies_with_namespace

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

// UpdatePolicy1Reader is a Reader for the UpdatePolicy1 structure.
type UpdatePolicy1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePolicy1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePolicy1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePolicy1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/namespaces/{namespace}/policies/{policyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePolicy1OK creates a UpdatePolicy1OK with default headers values
func NewUpdatePolicy1OK() *UpdatePolicy1OK {
	return &UpdatePolicy1OK{}
}

/*UpdatePolicy1OK handles this case with default header values.

  operation successful
*/
type UpdatePolicy1OK struct {
}

func (o *UpdatePolicy1OK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/{policyId}][%d] updatePolicy1OK ", 200)
}

func (o *UpdatePolicy1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdatePolicy1BadRequest creates a UpdatePolicy1BadRequest with default headers values
func NewUpdatePolicy1BadRequest() *UpdatePolicy1BadRequest {
	return &UpdatePolicy1BadRequest{}
}

/*UpdatePolicy1BadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40033</td><td>errors.net.accelbyte.platform.legal.invalid_policy_id</td></tr></table>
*/
type UpdatePolicy1BadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *UpdatePolicy1BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/{policyId}][%d] updatePolicy1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePolicy1BadRequest) ToJSONString() string {
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

func (o *UpdatePolicy1BadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePolicy1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
