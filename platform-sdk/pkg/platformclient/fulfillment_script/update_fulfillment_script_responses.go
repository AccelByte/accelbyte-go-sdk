// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package fulfillment_script

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// UpdateFulfillmentScriptReader is a Reader for the UpdateFulfillmentScript structure.
type UpdateFulfillmentScriptReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateFulfillmentScriptReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateFulfillmentScriptOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateFulfillmentScriptBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /platform/admin/fulfillment/scripts/{id} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateFulfillmentScriptOK creates a UpdateFulfillmentScriptOK with default headers values
func NewUpdateFulfillmentScriptOK() *UpdateFulfillmentScriptOK {
	return &UpdateFulfillmentScriptOK{}
}

/*UpdateFulfillmentScriptOK handles this case with default header values.

  successful operation
*/
type UpdateFulfillmentScriptOK struct {
	Payload *platformclientmodels.FulfillmentScriptInfo
}

func (o *UpdateFulfillmentScriptOK) Error() string {
	return fmt.Sprintf("[PATCH /platform/admin/fulfillment/scripts/{id}][%d] updateFulfillmentScriptOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateFulfillmentScriptOK) ToJSONString() string {
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

func (o *UpdateFulfillmentScriptOK) GetPayload() *platformclientmodels.FulfillmentScriptInfo {
	return o.Payload
}

func (o *UpdateFulfillmentScriptOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.FulfillmentScriptInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateFulfillmentScriptBadRequest creates a UpdateFulfillmentScriptBadRequest with default headers values
func NewUpdateFulfillmentScriptBadRequest() *UpdateFulfillmentScriptBadRequest {
	return &UpdateFulfillmentScriptBadRequest{}
}

/*UpdateFulfillmentScriptBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>38141</td><td>Fulfillment script does not exist</td></tr></table>
*/
type UpdateFulfillmentScriptBadRequest struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *UpdateFulfillmentScriptBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /platform/admin/fulfillment/scripts/{id}][%d] updateFulfillmentScriptBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateFulfillmentScriptBadRequest) ToJSONString() string {
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

func (o *UpdateFulfillmentScriptBadRequest) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateFulfillmentScriptBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
