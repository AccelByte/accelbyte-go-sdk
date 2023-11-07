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

// HandleUploadXboxPFXCertificateReader is a Reader for the HandleUploadXboxPFXCertificate structure.
type HandleUploadXboxPFXCertificateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *HandleUploadXboxPFXCertificateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewHandleUploadXboxPFXCertificateOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewHandleUploadXboxPFXCertificateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewHandleUploadXboxPFXCertificateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewHandleUploadXboxPFXCertificateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewHandleUploadXboxPFXCertificateNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewHandleUploadXboxPFXCertificateInternalServerError()
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

// NewHandleUploadXboxPFXCertificateOK creates a HandleUploadXboxPFXCertificateOK with default headers values
func NewHandleUploadXboxPFXCertificateOK() *HandleUploadXboxPFXCertificateOK {
	return &HandleUploadXboxPFXCertificateOK{}
}

/*HandleUploadXboxPFXCertificateOK handles this case with default header values.

  OK
*/
type HandleUploadXboxPFXCertificateOK struct {
	Payload *sessionclientmodels.ModelsPlatformCredentials
}

func (o *HandleUploadXboxPFXCertificateOK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] handleUploadXboxPFXCertificateOK  %+v", 200, o.ToJSONString())
}

func (o *HandleUploadXboxPFXCertificateOK) ToJSONString() string {
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

func (o *HandleUploadXboxPFXCertificateOK) GetPayload() *sessionclientmodels.ModelsPlatformCredentials {
	return o.Payload
}

func (o *HandleUploadXboxPFXCertificateOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHandleUploadXboxPFXCertificateBadRequest creates a HandleUploadXboxPFXCertificateBadRequest with default headers values
func NewHandleUploadXboxPFXCertificateBadRequest() *HandleUploadXboxPFXCertificateBadRequest {
	return &HandleUploadXboxPFXCertificateBadRequest{}
}

/*HandleUploadXboxPFXCertificateBadRequest handles this case with default header values.

  Bad Request
*/
type HandleUploadXboxPFXCertificateBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *HandleUploadXboxPFXCertificateBadRequest) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] handleUploadXboxPFXCertificateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *HandleUploadXboxPFXCertificateBadRequest) ToJSONString() string {
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

func (o *HandleUploadXboxPFXCertificateBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *HandleUploadXboxPFXCertificateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHandleUploadXboxPFXCertificateUnauthorized creates a HandleUploadXboxPFXCertificateUnauthorized with default headers values
func NewHandleUploadXboxPFXCertificateUnauthorized() *HandleUploadXboxPFXCertificateUnauthorized {
	return &HandleUploadXboxPFXCertificateUnauthorized{}
}

/*HandleUploadXboxPFXCertificateUnauthorized handles this case with default header values.

  Unauthorized
*/
type HandleUploadXboxPFXCertificateUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *HandleUploadXboxPFXCertificateUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] handleUploadXboxPFXCertificateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *HandleUploadXboxPFXCertificateUnauthorized) ToJSONString() string {
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

func (o *HandleUploadXboxPFXCertificateUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *HandleUploadXboxPFXCertificateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHandleUploadXboxPFXCertificateForbidden creates a HandleUploadXboxPFXCertificateForbidden with default headers values
func NewHandleUploadXboxPFXCertificateForbidden() *HandleUploadXboxPFXCertificateForbidden {
	return &HandleUploadXboxPFXCertificateForbidden{}
}

/*HandleUploadXboxPFXCertificateForbidden handles this case with default header values.

  Forbidden
*/
type HandleUploadXboxPFXCertificateForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *HandleUploadXboxPFXCertificateForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] handleUploadXboxPFXCertificateForbidden  %+v", 403, o.ToJSONString())
}

func (o *HandleUploadXboxPFXCertificateForbidden) ToJSONString() string {
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

func (o *HandleUploadXboxPFXCertificateForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *HandleUploadXboxPFXCertificateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHandleUploadXboxPFXCertificateNotFound creates a HandleUploadXboxPFXCertificateNotFound with default headers values
func NewHandleUploadXboxPFXCertificateNotFound() *HandleUploadXboxPFXCertificateNotFound {
	return &HandleUploadXboxPFXCertificateNotFound{}
}

/*HandleUploadXboxPFXCertificateNotFound handles this case with default header values.

  Not Found
*/
type HandleUploadXboxPFXCertificateNotFound struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *HandleUploadXboxPFXCertificateNotFound) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] handleUploadXboxPFXCertificateNotFound  %+v", 404, o.ToJSONString())
}

func (o *HandleUploadXboxPFXCertificateNotFound) ToJSONString() string {
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

func (o *HandleUploadXboxPFXCertificateNotFound) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *HandleUploadXboxPFXCertificateNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewHandleUploadXboxPFXCertificateInternalServerError creates a HandleUploadXboxPFXCertificateInternalServerError with default headers values
func NewHandleUploadXboxPFXCertificateInternalServerError() *HandleUploadXboxPFXCertificateInternalServerError {
	return &HandleUploadXboxPFXCertificateInternalServerError{}
}

/*HandleUploadXboxPFXCertificateInternalServerError handles this case with default header values.

  Internal Server Error
*/
type HandleUploadXboxPFXCertificateInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *HandleUploadXboxPFXCertificateInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/namespaces/{namespace}/certificates/pfx/platforms/xbl][%d] handleUploadXboxPFXCertificateInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *HandleUploadXboxPFXCertificateInternalServerError) ToJSONString() string {
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

func (o *HandleUploadXboxPFXCertificateInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *HandleUploadXboxPFXCertificateInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
