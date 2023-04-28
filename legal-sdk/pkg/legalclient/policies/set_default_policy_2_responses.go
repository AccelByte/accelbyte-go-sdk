// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies

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

// SetDefaultPolicy2Reader is a Reader for the SetDefaultPolicy2 structure.
type SetDefaultPolicy2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SetDefaultPolicy2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSetDefaultPolicy2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSetDefaultPolicy2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/policies/{policyId}/default returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSetDefaultPolicy2OK creates a SetDefaultPolicy2OK with default headers values
func NewSetDefaultPolicy2OK() *SetDefaultPolicy2OK {
	return &SetDefaultPolicy2OK{}
}

/*SetDefaultPolicy2OK handles this case with default header values.

  operation successful
*/
type SetDefaultPolicy2OK struct {
}

func (o *SetDefaultPolicy2OK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/{policyId}/default][%d] setDefaultPolicy2OK ", 200)
}

func (o *SetDefaultPolicy2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSetDefaultPolicy2BadRequest creates a SetDefaultPolicy2BadRequest with default headers values
func NewSetDefaultPolicy2BadRequest() *SetDefaultPolicy2BadRequest {
	return &SetDefaultPolicy2BadRequest{}
}

/*SetDefaultPolicy2BadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40033</td><td>errors.net.accelbyte.platform.legal.invalid_policy_id</td></tr></table>
*/
type SetDefaultPolicy2BadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *SetDefaultPolicy2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/{policyId}/default][%d] setDefaultPolicy2BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SetDefaultPolicy2BadRequest) ToJSONString() string {
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

func (o *SetDefaultPolicy2BadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SetDefaultPolicy2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
