// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_ui

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
)

// UploadAppUIFileReader is a Reader for the UploadAppUIFile structure.
type UploadAppUIFileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UploadAppUIFileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUploadAppUIFileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUploadAppUIFileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUploadAppUIFileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUploadAppUIFileInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 502:
		result := NewUploadAppUIFileBadGateway()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUploadAppUIFileOK creates a UploadAppUIFileOK with default headers values
func NewUploadAppUIFileOK() *UploadAppUIFileOK {
	return &UploadAppUIFileOK{}
}

/*UploadAppUIFileOK handles this case with default header values.

  OK
*/
type UploadAppUIFileOK struct {
	Payload *csmclientmodels.ApimodelUploadFileResponse
}

func (o *UploadAppUIFileOK) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload][%d] uploadAppUiFileOK  %+v", 200, o.ToJSONString())
}

func (o *UploadAppUIFileOK) ToJSONString() string {
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

func (o *UploadAppUIFileOK) GetPayload() *csmclientmodels.ApimodelUploadFileResponse {
	return o.Payload
}

func (o *UploadAppUIFileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ApimodelUploadFileResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUploadAppUIFileBadRequest creates a UploadAppUIFileBadRequest with default headers values
func NewUploadAppUIFileBadRequest() *UploadAppUIFileBadRequest {
	return &UploadAppUIFileBadRequest{}
}

/*UploadAppUIFileBadRequest handles this case with default header values.

  Bad Request
*/
type UploadAppUIFileBadRequest struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UploadAppUIFileBadRequest) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload][%d] uploadAppUiFileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UploadAppUIFileBadRequest) ToJSONString() string {
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

func (o *UploadAppUIFileBadRequest) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UploadAppUIFileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUploadAppUIFileNotFound creates a UploadAppUIFileNotFound with default headers values
func NewUploadAppUIFileNotFound() *UploadAppUIFileNotFound {
	return &UploadAppUIFileNotFound{}
}

/*UploadAppUIFileNotFound handles this case with default header values.

  Not Found
*/
type UploadAppUIFileNotFound struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UploadAppUIFileNotFound) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload][%d] uploadAppUiFileNotFound  %+v", 404, o.ToJSONString())
}

func (o *UploadAppUIFileNotFound) ToJSONString() string {
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

func (o *UploadAppUIFileNotFound) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UploadAppUIFileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUploadAppUIFileInternalServerError creates a UploadAppUIFileInternalServerError with default headers values
func NewUploadAppUIFileInternalServerError() *UploadAppUIFileInternalServerError {
	return &UploadAppUIFileInternalServerError{}
}

/*UploadAppUIFileInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UploadAppUIFileInternalServerError struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UploadAppUIFileInternalServerError) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload][%d] uploadAppUiFileInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UploadAppUIFileInternalServerError) ToJSONString() string {
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

func (o *UploadAppUIFileInternalServerError) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UploadAppUIFileInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUploadAppUIFileBadGateway creates a UploadAppUIFileBadGateway with default headers values
func NewUploadAppUIFileBadGateway() *UploadAppUIFileBadGateway {
	return &UploadAppUIFileBadGateway{}
}

/*UploadAppUIFileBadGateway handles this case with default header values.

  Bad Gateway
*/
type UploadAppUIFileBadGateway struct {
	Payload *csmclientmodels.ResponseErrorResponse
}

func (o *UploadAppUIFileBadGateway) Error() string {
	return fmt.Sprintf("[POST /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload][%d] uploadAppUiFileBadGateway  %+v", 502, o.ToJSONString())
}

func (o *UploadAppUIFileBadGateway) ToJSONString() string {
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

func (o *UploadAppUIFileBadGateway) GetPayload() *csmclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *UploadAppUIFileBadGateway) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(csmclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
