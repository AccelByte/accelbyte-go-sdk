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

// DevelopmentServerConfigurationPatchReader is a Reader for the DevelopmentServerConfigurationPatch structure.
type DevelopmentServerConfigurationPatchReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DevelopmentServerConfigurationPatchReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDevelopmentServerConfigurationPatchNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDevelopmentServerConfigurationPatchUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDevelopmentServerConfigurationPatchForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDevelopmentServerConfigurationPatchNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDevelopmentServerConfigurationPatchInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDevelopmentServerConfigurationPatchNoContent creates a DevelopmentServerConfigurationPatchNoContent with default headers values
func NewDevelopmentServerConfigurationPatchNoContent() *DevelopmentServerConfigurationPatchNoContent {
	return &DevelopmentServerConfigurationPatchNoContent{}
}

/*DevelopmentServerConfigurationPatchNoContent handles this case with default header values.

  development server configuration updated
*/
type DevelopmentServerConfigurationPatchNoContent struct {
}

func (o *DevelopmentServerConfigurationPatchNoContent) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationPatchNoContent ", 204)
}

func (o *DevelopmentServerConfigurationPatchNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDevelopmentServerConfigurationPatchUnauthorized creates a DevelopmentServerConfigurationPatchUnauthorized with default headers values
func NewDevelopmentServerConfigurationPatchUnauthorized() *DevelopmentServerConfigurationPatchUnauthorized {
	return &DevelopmentServerConfigurationPatchUnauthorized{}
}

/*DevelopmentServerConfigurationPatchUnauthorized handles this case with default header values.

  no authorization provided
*/
type DevelopmentServerConfigurationPatchUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationPatchUnauthorized) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationPatchUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationPatchUnauthorized) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationPatchUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationPatchUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDevelopmentServerConfigurationPatchForbidden creates a DevelopmentServerConfigurationPatchForbidden with default headers values
func NewDevelopmentServerConfigurationPatchForbidden() *DevelopmentServerConfigurationPatchForbidden {
	return &DevelopmentServerConfigurationPatchForbidden{}
}

/*DevelopmentServerConfigurationPatchForbidden handles this case with default header values.

  insufficient permissions
*/
type DevelopmentServerConfigurationPatchForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationPatchForbidden) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationPatchForbidden  %+v", 403, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationPatchForbidden) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationPatchForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationPatchForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDevelopmentServerConfigurationPatchNotFound creates a DevelopmentServerConfigurationPatchNotFound with default headers values
func NewDevelopmentServerConfigurationPatchNotFound() *DevelopmentServerConfigurationPatchNotFound {
	return &DevelopmentServerConfigurationPatchNotFound{}
}

/*DevelopmentServerConfigurationPatchNotFound handles this case with default header values.

  development server configuration not found
*/
type DevelopmentServerConfigurationPatchNotFound struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationPatchNotFound) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationPatchNotFound  %+v", 404, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationPatchNotFound) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationPatchNotFound) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationPatchNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDevelopmentServerConfigurationPatchInternalServerError creates a DevelopmentServerConfigurationPatchInternalServerError with default headers values
func NewDevelopmentServerConfigurationPatchInternalServerError() *DevelopmentServerConfigurationPatchInternalServerError {
	return &DevelopmentServerConfigurationPatchInternalServerError{}
}

/*DevelopmentServerConfigurationPatchInternalServerError handles this case with default header values.

  internal server error
*/
type DevelopmentServerConfigurationPatchInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationPatchInternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /ams/v1/admin/namespaces/{namespace}/development/server-configurations/{developmentServerConfigID}][%d] developmentServerConfigurationPatchInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationPatchInternalServerError) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationPatchInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationPatchInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
