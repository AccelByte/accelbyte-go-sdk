// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package image_config

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
)

// ImportImagesReader is a Reader for the ImportImages structure.
type ImportImagesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImportImagesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImportImagesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewImportImagesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImportImagesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewImportImagesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImportImagesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /dsmcontroller/admin/images/import returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImportImagesOK creates a ImportImagesOK with default headers values
func NewImportImagesOK() *ImportImagesOK {
	return &ImportImagesOK{}
}

/*ImportImagesOK handles this case with default header values.

  images imported
*/
type ImportImagesOK struct {
	Payload *dsmcclientmodels.ModelsImportResponse
}

func (o *ImportImagesOK) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/images/import][%d] importImagesOK  %+v", 200, o.ToJSONString())
}

func (o *ImportImagesOK) ToJSONString() string {
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

func (o *ImportImagesOK) GetPayload() *dsmcclientmodels.ModelsImportResponse {
	return o.Payload
}

func (o *ImportImagesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ModelsImportResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportImagesBadRequest creates a ImportImagesBadRequest with default headers values
func NewImportImagesBadRequest() *ImportImagesBadRequest {
	return &ImportImagesBadRequest{}
}

/*ImportImagesBadRequest handles this case with default header values.

  malformed request
*/
type ImportImagesBadRequest struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImportImagesBadRequest) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/images/import][%d] importImagesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ImportImagesBadRequest) ToJSONString() string {
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

func (o *ImportImagesBadRequest) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportImagesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportImagesUnauthorized creates a ImportImagesUnauthorized with default headers values
func NewImportImagesUnauthorized() *ImportImagesUnauthorized {
	return &ImportImagesUnauthorized{}
}

/*ImportImagesUnauthorized handles this case with default header values.

  unauthorized access
*/
type ImportImagesUnauthorized struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImportImagesUnauthorized) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/images/import][%d] importImagesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImportImagesUnauthorized) ToJSONString() string {
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

func (o *ImportImagesUnauthorized) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportImagesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportImagesForbidden creates a ImportImagesForbidden with default headers values
func NewImportImagesForbidden() *ImportImagesForbidden {
	return &ImportImagesForbidden{}
}

/*ImportImagesForbidden handles this case with default header values.

  forbidden access
*/
type ImportImagesForbidden struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImportImagesForbidden) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/images/import][%d] importImagesForbidden  %+v", 403, o.ToJSONString())
}

func (o *ImportImagesForbidden) ToJSONString() string {
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

func (o *ImportImagesForbidden) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportImagesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportImagesInternalServerError creates a ImportImagesInternalServerError with default headers values
func NewImportImagesInternalServerError() *ImportImagesInternalServerError {
	return &ImportImagesInternalServerError{}
}

/*ImportImagesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ImportImagesInternalServerError struct {
	Payload *dsmcclientmodels.ResponseError
}

func (o *ImportImagesInternalServerError) Error() string {
	return fmt.Sprintf("[POST /dsmcontroller/admin/images/import][%d] importImagesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImportImagesInternalServerError) ToJSONString() string {
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

func (o *ImportImagesInternalServerError) GetPayload() *dsmcclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportImagesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsmcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
