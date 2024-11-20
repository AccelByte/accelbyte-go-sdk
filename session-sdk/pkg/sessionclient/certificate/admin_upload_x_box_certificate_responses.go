// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package certificate

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// AdminUploadXBoxCertificateReader is a Reader for the AdminUploadXBoxCertificate structure.
type AdminUploadXBoxCertificateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUploadXBoxCertificateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUploadXBoxCertificateOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUploadXBoxCertificateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUploadXBoxCertificateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUploadXBoxCertificateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUploadXBoxCertificateNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUploadXBoxCertificateInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUploadXBoxCertificateOK creates a AdminUploadXBoxCertificateOK with default headers values
func NewAdminUploadXBoxCertificateOK() *AdminUploadXBoxCertificateOK {
	return &AdminUploadXBoxCertificateOK{}
}

/*AdminUploadXBoxCertificateOK handles this case with default header values.

  OK
*/
type AdminUploadXBoxCertificateOK struct {
	Payload *sessionclientmodels.ModelsPlatformCredentials
}

func (o *AdminUploadXBoxCertificateOK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] adminUploadXBoxCertificateOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUploadXBoxCertificateOK) ToJSONString() string {
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

func (o *AdminUploadXBoxCertificateOK) GetPayload() *sessionclientmodels.ModelsPlatformCredentials {
	return o.Payload
}

func (o *AdminUploadXBoxCertificateOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ModelsPlatformCredentials)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUploadXBoxCertificateBadRequest creates a AdminUploadXBoxCertificateBadRequest with default headers values
func NewAdminUploadXBoxCertificateBadRequest() *AdminUploadXBoxCertificateBadRequest {
	return &AdminUploadXBoxCertificateBadRequest{}
}

/*AdminUploadXBoxCertificateBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUploadXBoxCertificateBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUploadXBoxCertificateBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] adminUploadXBoxCertificateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUploadXBoxCertificateBadRequest) ToJSONString() string {
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

func (o *AdminUploadXBoxCertificateBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadXBoxCertificateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUploadXBoxCertificateUnauthorized creates a AdminUploadXBoxCertificateUnauthorized with default headers values
func NewAdminUploadXBoxCertificateUnauthorized() *AdminUploadXBoxCertificateUnauthorized {
	return &AdminUploadXBoxCertificateUnauthorized{}
}

/*AdminUploadXBoxCertificateUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUploadXBoxCertificateUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUploadXBoxCertificateUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] adminUploadXBoxCertificateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUploadXBoxCertificateUnauthorized) ToJSONString() string {
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

func (o *AdminUploadXBoxCertificateUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadXBoxCertificateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUploadXBoxCertificateForbidden creates a AdminUploadXBoxCertificateForbidden with default headers values
func NewAdminUploadXBoxCertificateForbidden() *AdminUploadXBoxCertificateForbidden {
	return &AdminUploadXBoxCertificateForbidden{}
}

/*AdminUploadXBoxCertificateForbidden handles this case with default header values.

  Forbidden
*/
type AdminUploadXBoxCertificateForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUploadXBoxCertificateForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] adminUploadXBoxCertificateForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUploadXBoxCertificateForbidden) ToJSONString() string {
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

func (o *AdminUploadXBoxCertificateForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadXBoxCertificateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUploadXBoxCertificateNotFound creates a AdminUploadXBoxCertificateNotFound with default headers values
func NewAdminUploadXBoxCertificateNotFound() *AdminUploadXBoxCertificateNotFound {
	return &AdminUploadXBoxCertificateNotFound{}
}

/*AdminUploadXBoxCertificateNotFound handles this case with default header values.

  Not Found
*/
type AdminUploadXBoxCertificateNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUploadXBoxCertificateNotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] adminUploadXBoxCertificateNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminUploadXBoxCertificateNotFound) ToJSONString() string {
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

func (o *AdminUploadXBoxCertificateNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadXBoxCertificateNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUploadXBoxCertificateInternalServerError creates a AdminUploadXBoxCertificateInternalServerError with default headers values
func NewAdminUploadXBoxCertificateInternalServerError() *AdminUploadXBoxCertificateInternalServerError {
	return &AdminUploadXBoxCertificateInternalServerError{}
}

/*AdminUploadXBoxCertificateInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUploadXBoxCertificateInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUploadXBoxCertificateInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] adminUploadXBoxCertificateInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUploadXBoxCertificateInternalServerError) ToJSONString() string {
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

func (o *AdminUploadXBoxCertificateInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUploadXBoxCertificateInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
