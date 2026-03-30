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

// UploadRevocationPluginConfigCertV2Reader is a Reader for the UploadRevocationPluginConfigCertV2 structure.
type UploadRevocationPluginConfigCertV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UploadRevocationPluginConfigCertV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUploadRevocationPluginConfigCertV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUploadRevocationPluginConfigCertV2UnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation/customConfig/cert returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUploadRevocationPluginConfigCertV2OK creates a UploadRevocationPluginConfigCertV2OK with default headers values
func NewUploadRevocationPluginConfigCertV2OK() *UploadRevocationPluginConfigCertV2OK {
	return &UploadRevocationPluginConfigCertV2OK{}
}

/*UploadRevocationPluginConfigCertV2OK handles this case with default header values.

  successful operation
*/
type UploadRevocationPluginConfigCertV2OK struct {
	Payload *platformclientmodels.RevocationPluginConfigInfo
}

func (o *UploadRevocationPluginConfigCertV2OK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation/customConfig/cert][%d] uploadRevocationPluginConfigCertV2OK  %+v", 200, o.ToJSONString())
}

func (o *UploadRevocationPluginConfigCertV2OK) ToJSONString() string {
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

func (o *UploadRevocationPluginConfigCertV2OK) GetPayload() *platformclientmodels.RevocationPluginConfigInfo {
	return o.Payload
}

func (o *UploadRevocationPluginConfigCertV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUploadRevocationPluginConfigCertV2UnprocessableEntity creates a UploadRevocationPluginConfigCertV2UnprocessableEntity with default headers values
func NewUploadRevocationPluginConfigCertV2UnprocessableEntity() *UploadRevocationPluginConfigCertV2UnprocessableEntity {
	return &UploadRevocationPluginConfigCertV2UnprocessableEntity{}
}

/*UploadRevocationPluginConfigCertV2UnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UploadRevocationPluginConfigCertV2UnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UploadRevocationPluginConfigCertV2UnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/revocation/plugins/revocation/customConfig/cert][%d] uploadRevocationPluginConfigCertV2UnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UploadRevocationPluginConfigCertV2UnprocessableEntity) ToJSONString() string {
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

func (o *UploadRevocationPluginConfigCertV2UnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UploadRevocationPluginConfigCertV2UnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
