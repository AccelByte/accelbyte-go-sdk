// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_account_closure_client

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// AdminValidateXboxBPCertFileReader is a Reader for the AdminValidateXboxBPCertFile structure.
type AdminValidateXboxBPCertFileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminValidateXboxBPCertFileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminValidateXboxBPCertFileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminValidateXboxBPCertFileBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminValidateXboxBPCertFileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminValidateXboxBPCertFileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminValidateXboxBPCertFileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminValidateXboxBPCertFileInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/admin/namespaces/{namespace}/platforms/xbox/closure/cert/validation returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminValidateXboxBPCertFileOK creates a AdminValidateXboxBPCertFileOK with default headers values
func NewAdminValidateXboxBPCertFileOK() *AdminValidateXboxBPCertFileOK {
	return &AdminValidateXboxBPCertFileOK{}
}

/*AdminValidateXboxBPCertFileOK handles this case with default header values.

  OK
*/
type AdminValidateXboxBPCertFileOK struct {
	Payload *gdprclientmodels.DTOXboxBPCertValidationResponse
}

func (o *AdminValidateXboxBPCertFileOK) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/xbox/closure/cert/validation][%d] adminValidateXboxBPCertFileOK  %+v", 200, o.ToJSONString())
}

func (o *AdminValidateXboxBPCertFileOK) ToJSONString() string {
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

func (o *AdminValidateXboxBPCertFileOK) GetPayload() *gdprclientmodels.DTOXboxBPCertValidationResponse {
	return o.Payload
}

func (o *AdminValidateXboxBPCertFileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.DTOXboxBPCertValidationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminValidateXboxBPCertFileBadRequest creates a AdminValidateXboxBPCertFileBadRequest with default headers values
func NewAdminValidateXboxBPCertFileBadRequest() *AdminValidateXboxBPCertFileBadRequest {
	return &AdminValidateXboxBPCertFileBadRequest{}
}

/*AdminValidateXboxBPCertFileBadRequest handles this case with default header values.

  Bad Request
*/
type AdminValidateXboxBPCertFileBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminValidateXboxBPCertFileBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/xbox/closure/cert/validation][%d] adminValidateXboxBPCertFileBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminValidateXboxBPCertFileBadRequest) ToJSONString() string {
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

func (o *AdminValidateXboxBPCertFileBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminValidateXboxBPCertFileBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminValidateXboxBPCertFileUnauthorized creates a AdminValidateXboxBPCertFileUnauthorized with default headers values
func NewAdminValidateXboxBPCertFileUnauthorized() *AdminValidateXboxBPCertFileUnauthorized {
	return &AdminValidateXboxBPCertFileUnauthorized{}
}

/*AdminValidateXboxBPCertFileUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminValidateXboxBPCertFileUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminValidateXboxBPCertFileUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/xbox/closure/cert/validation][%d] adminValidateXboxBPCertFileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminValidateXboxBPCertFileUnauthorized) ToJSONString() string {
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

func (o *AdminValidateXboxBPCertFileUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminValidateXboxBPCertFileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminValidateXboxBPCertFileForbidden creates a AdminValidateXboxBPCertFileForbidden with default headers values
func NewAdminValidateXboxBPCertFileForbidden() *AdminValidateXboxBPCertFileForbidden {
	return &AdminValidateXboxBPCertFileForbidden{}
}

/*AdminValidateXboxBPCertFileForbidden handles this case with default header values.

  Forbidden
*/
type AdminValidateXboxBPCertFileForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminValidateXboxBPCertFileForbidden) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/xbox/closure/cert/validation][%d] adminValidateXboxBPCertFileForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminValidateXboxBPCertFileForbidden) ToJSONString() string {
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

func (o *AdminValidateXboxBPCertFileForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminValidateXboxBPCertFileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminValidateXboxBPCertFileNotFound creates a AdminValidateXboxBPCertFileNotFound with default headers values
func NewAdminValidateXboxBPCertFileNotFound() *AdminValidateXboxBPCertFileNotFound {
	return &AdminValidateXboxBPCertFileNotFound{}
}

/*AdminValidateXboxBPCertFileNotFound handles this case with default header values.

  Not Found
*/
type AdminValidateXboxBPCertFileNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminValidateXboxBPCertFileNotFound) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/xbox/closure/cert/validation][%d] adminValidateXboxBPCertFileNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminValidateXboxBPCertFileNotFound) ToJSONString() string {
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

func (o *AdminValidateXboxBPCertFileNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminValidateXboxBPCertFileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminValidateXboxBPCertFileInternalServerError creates a AdminValidateXboxBPCertFileInternalServerError with default headers values
func NewAdminValidateXboxBPCertFileInternalServerError() *AdminValidateXboxBPCertFileInternalServerError {
	return &AdminValidateXboxBPCertFileInternalServerError{}
}

/*AdminValidateXboxBPCertFileInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminValidateXboxBPCertFileInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminValidateXboxBPCertFileInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/xbox/closure/cert/validation][%d] adminValidateXboxBPCertFileInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminValidateXboxBPCertFileInternalServerError) ToJSONString() string {
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

func (o *AdminValidateXboxBPCertFileInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminValidateXboxBPCertFileInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
