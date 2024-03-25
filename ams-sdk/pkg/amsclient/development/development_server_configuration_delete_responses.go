// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package development

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// DevelopmentServerConfigurationDeleteReader is a Reader for the DevelopmentServerConfigurationDelete structure.
type DevelopmentServerConfigurationDeleteReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DevelopmentServerConfigurationDeleteReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDevelopmentServerConfigurationDeleteNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDevelopmentServerConfigurationDeleteUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDevelopmentServerConfigurationDeleteForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDevelopmentServerConfigurationDeleteNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDevelopmentServerConfigurationDeleteInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDevelopmentServerConfigurationDeleteNoContent creates a DevelopmentServerConfigurationDeleteNoContent with default headers values
func NewDevelopmentServerConfigurationDeleteNoContent() *DevelopmentServerConfigurationDeleteNoContent {
	return &DevelopmentServerConfigurationDeleteNoContent{}
}

/*DevelopmentServerConfigurationDeleteNoContent handles this case with default header values.

  development server configuration deleted
*/
type DevelopmentServerConfigurationDeleteNoContent struct {
}

func (o *DevelopmentServerConfigurationDeleteNoContent) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationDeleteNoContent ", 204)
}

func (o *DevelopmentServerConfigurationDeleteNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDevelopmentServerConfigurationDeleteUnauthorized creates a DevelopmentServerConfigurationDeleteUnauthorized with default headers values
func NewDevelopmentServerConfigurationDeleteUnauthorized() *DevelopmentServerConfigurationDeleteUnauthorized {
	return &DevelopmentServerConfigurationDeleteUnauthorized{}
}

/*DevelopmentServerConfigurationDeleteUnauthorized handles this case with default header values.

  no authorization provided
*/
type DevelopmentServerConfigurationDeleteUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationDeleteUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationDeleteUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationDeleteUnauthorized) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationDeleteUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationDeleteUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDevelopmentServerConfigurationDeleteForbidden creates a DevelopmentServerConfigurationDeleteForbidden with default headers values
func NewDevelopmentServerConfigurationDeleteForbidden() *DevelopmentServerConfigurationDeleteForbidden {
	return &DevelopmentServerConfigurationDeleteForbidden{}
}

/*DevelopmentServerConfigurationDeleteForbidden handles this case with default header values.

  insufficient permissions
*/
type DevelopmentServerConfigurationDeleteForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationDeleteForbidden) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationDeleteForbidden  %+v", 403, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationDeleteForbidden) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationDeleteForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationDeleteForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDevelopmentServerConfigurationDeleteNotFound creates a DevelopmentServerConfigurationDeleteNotFound with default headers values
func NewDevelopmentServerConfigurationDeleteNotFound() *DevelopmentServerConfigurationDeleteNotFound {
	return &DevelopmentServerConfigurationDeleteNotFound{}
}

/*DevelopmentServerConfigurationDeleteNotFound handles this case with default header values.

  development server configuration not found
*/
type DevelopmentServerConfigurationDeleteNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationDeleteNotFound) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationDeleteNotFound  %+v", 404, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationDeleteNotFound) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationDeleteNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationDeleteNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDevelopmentServerConfigurationDeleteInternalServerError creates a DevelopmentServerConfigurationDeleteInternalServerError with default headers values
func NewDevelopmentServerConfigurationDeleteInternalServerError() *DevelopmentServerConfigurationDeleteInternalServerError {
	return &DevelopmentServerConfigurationDeleteInternalServerError{}
}

/*DevelopmentServerConfigurationDeleteInternalServerError handles this case with default header values.

  internal server error
*/
type DevelopmentServerConfigurationDeleteInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationDeleteInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationDeleteInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationDeleteInternalServerError) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationDeleteInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationDeleteInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
