// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package global_configuration

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

// AdminDeleteGlobalConfigurationReader is a Reader for the AdminDeleteGlobalConfiguration structure.
type AdminDeleteGlobalConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteGlobalConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteGlobalConfigurationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteGlobalConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteGlobalConfigurationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/admin/global-configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteGlobalConfigurationNoContent creates a AdminDeleteGlobalConfigurationNoContent with default headers values
func NewAdminDeleteGlobalConfigurationNoContent() *AdminDeleteGlobalConfigurationNoContent {
	return &AdminDeleteGlobalConfigurationNoContent{}
}

/*AdminDeleteGlobalConfigurationNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteGlobalConfigurationNoContent struct {
	Payload string
}

func (o *AdminDeleteGlobalConfigurationNoContent) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/global-configurations][%d] adminDeleteGlobalConfigurationNoContent  %+v", 204, o.ToJSONString())
}

func (o *AdminDeleteGlobalConfigurationNoContent) ToJSONString() string {
	if o.Payload == "" {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminDeleteGlobalConfigurationNoContent) GetPayload() string {
	return o.Payload
}

func (o *AdminDeleteGlobalConfigurationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteGlobalConfigurationUnauthorized creates a AdminDeleteGlobalConfigurationUnauthorized with default headers values
func NewAdminDeleteGlobalConfigurationUnauthorized() *AdminDeleteGlobalConfigurationUnauthorized {
	return &AdminDeleteGlobalConfigurationUnauthorized{}
}

/*AdminDeleteGlobalConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteGlobalConfigurationUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteGlobalConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/global-configurations][%d] adminDeleteGlobalConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteGlobalConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteGlobalConfigurationUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteGlobalConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminDeleteGlobalConfigurationForbidden creates a AdminDeleteGlobalConfigurationForbidden with default headers values
func NewAdminDeleteGlobalConfigurationForbidden() *AdminDeleteGlobalConfigurationForbidden {
	return &AdminDeleteGlobalConfigurationForbidden{}
}

/*AdminDeleteGlobalConfigurationForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteGlobalConfigurationForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteGlobalConfigurationForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/global-configurations][%d] adminDeleteGlobalConfigurationForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteGlobalConfigurationForbidden) ToJSONString() string {
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

func (o *AdminDeleteGlobalConfigurationForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteGlobalConfigurationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
