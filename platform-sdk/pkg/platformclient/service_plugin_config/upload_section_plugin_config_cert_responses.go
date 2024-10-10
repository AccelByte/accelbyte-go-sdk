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

// UploadSectionPluginConfigCertReader is a Reader for the UploadSectionPluginConfigCert structure.
type UploadSectionPluginConfigCertReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UploadSectionPluginConfigCertReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUploadSectionPluginConfigCertOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUploadSectionPluginConfigCertUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /platform/admin/namespaces/{namespace}/catalog/plugins/section/customConfig/cert returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUploadSectionPluginConfigCertOK creates a UploadSectionPluginConfigCertOK with default headers values
func NewUploadSectionPluginConfigCertOK() *UploadSectionPluginConfigCertOK {
	return &UploadSectionPluginConfigCertOK{}
}

/*UploadSectionPluginConfigCertOK handles this case with default header values.

  successful operation
*/
type UploadSectionPluginConfigCertOK struct {
	Payload *platformclientmodels.SectionPluginConfigInfo
}

func (o *UploadSectionPluginConfigCertOK) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/catalog/plugins/section/customConfig/cert][%d] uploadSectionPluginConfigCertOK  %+v", 200, o.ToJSONString())
}

func (o *UploadSectionPluginConfigCertOK) ToJSONString() string {
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

func (o *UploadSectionPluginConfigCertOK) GetPayload() *platformclientmodels.SectionPluginConfigInfo {
	return o.Payload
}

func (o *UploadSectionPluginConfigCertOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.SectionPluginConfigInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUploadSectionPluginConfigCertUnprocessableEntity creates a UploadSectionPluginConfigCertUnprocessableEntity with default headers values
func NewUploadSectionPluginConfigCertUnprocessableEntity() *UploadSectionPluginConfigCertUnprocessableEntity {
	return &UploadSectionPluginConfigCertUnprocessableEntity{}
}

/*UploadSectionPluginConfigCertUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UploadSectionPluginConfigCertUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *UploadSectionPluginConfigCertUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PUT /platform/admin/namespaces/{namespace}/catalog/plugins/section/customConfig/cert][%d] uploadSectionPluginConfigCertUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UploadSectionPluginConfigCertUnprocessableEntity) ToJSONString() string {
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

func (o *UploadSectionPluginConfigCertUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UploadSectionPluginConfigCertUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
