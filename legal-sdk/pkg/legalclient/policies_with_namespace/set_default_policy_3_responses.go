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

// SetDefaultPolicy3Reader is a Reader for the SetDefaultPolicy3 structure.
type SetDefaultPolicy3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SetDefaultPolicy3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSetDefaultPolicy3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSetDefaultPolicy3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/namespaces/{namespace}/policies/{policyId}/default returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSetDefaultPolicy3OK creates a SetDefaultPolicy3OK with default headers values
func NewSetDefaultPolicy3OK() *SetDefaultPolicy3OK {
	return &SetDefaultPolicy3OK{}
}

/*SetDefaultPolicy3OK handles this case with default header values.

  operation successful
*/
type SetDefaultPolicy3OK struct {
}

func (o *SetDefaultPolicy3OK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/{policyId}/default][%d] setDefaultPolicy3OK ", 200)
}

func (o *SetDefaultPolicy3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewSetDefaultPolicy3BadRequest creates a SetDefaultPolicy3BadRequest with default headers values
func NewSetDefaultPolicy3BadRequest() *SetDefaultPolicy3BadRequest {
	return &SetDefaultPolicy3BadRequest{}
}

/*SetDefaultPolicy3BadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40033</td><td>errors.net.accelbyte.platform.legal.invalid_policy_id</td></tr></table>
*/
type SetDefaultPolicy3BadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *SetDefaultPolicy3BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/{policyId}/default][%d] setDefaultPolicy3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *SetDefaultPolicy3BadRequest) ToJSONString() string {
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

func (o *SetDefaultPolicy3BadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *SetDefaultPolicy3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
