// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package service_plugin_config

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

// UpdateRevocationPluginConfigReader is a Reader for the UpdateRevocationPluginConfig structure.
type UpdateRevocationPluginConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateRevocationPluginConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateRevocationPluginConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateRevocationPluginConfigUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateRevocationPluginConfigOK creates a UpdateRevocationPluginConfigOK with default headers values
func NewUpdateRevocationPluginConfigOK() *UpdateRevocationPluginConfigOK {
	return &UpdateRevocationPluginConfigOK{}
}

/*UpdateRevocationPluginConfigOK handles this case with default header values.

  successful operation
*/
type UpdateRevocationPluginConfigOK struct {
	Payload *platformclientmodels.RevocationPluginConfigInfo
}

func (o *UpdateRevocationPluginConfigOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation][%d] updateRevocationPluginConfigOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateRevocationPluginConfigOK) ToJSONString() string {
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

func (o *UpdateRevocationPluginConfigOK) GetPayload() *platformclientmodels.RevocationPluginConfigInfo {
	return o.Payload
}

func (o *UpdateRevocationPluginConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.RevocationPluginConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateRevocationPluginConfigUnprocessableEntity creates a UpdateRevocationPluginConfigUnprocessableEntity with default headers values
func NewUpdateRevocationPluginConfigUnprocessableEntity() *UpdateRevocationPluginConfigUnprocessableEntity {
	return &UpdateRevocationPluginConfigUnprocessableEntity{}
}

/*UpdateRevocationPluginConfigUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateRevocationPluginConfigUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UpdateRevocationPluginConfigUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation][%d] updateRevocationPluginConfigUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateRevocationPluginConfigUnprocessableEntity) ToJSONString() string {
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

func (o *UpdateRevocationPluginConfigUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateRevocationPluginConfigUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
