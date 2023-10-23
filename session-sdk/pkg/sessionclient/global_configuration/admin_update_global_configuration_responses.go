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

// AdminUpdateGlobalConfigurationReader is a Reader for the AdminUpdateGlobalConfiguration structure.
type AdminUpdateGlobalConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateGlobalConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateGlobalConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateGlobalConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateGlobalConfigurationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /session/v1/admin/global-configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateGlobalConfigurationOK creates a AdminUpdateGlobalConfigurationOK with default headers values
func NewAdminUpdateGlobalConfigurationOK() *AdminUpdateGlobalConfigurationOK {
	return &AdminUpdateGlobalConfigurationOK{}
}

/*AdminUpdateGlobalConfigurationOK handles this case with default header values.

  OK
*/
type AdminUpdateGlobalConfigurationOK struct {
	Payload *sessionclientmodels.ApimodelsGlobalConfigurationResponse
}

func (o *AdminUpdateGlobalConfigurationOK) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/global-configurations][%d] adminUpdateGlobalConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateGlobalConfigurationOK) ToJSONString() string {
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

func (o *AdminUpdateGlobalConfigurationOK) GetPayload() *sessionclientmodels.ApimodelsGlobalConfigurationResponse {
	return o.Payload
}

func (o *AdminUpdateGlobalConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsGlobalConfigurationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateGlobalConfigurationUnauthorized creates a AdminUpdateGlobalConfigurationUnauthorized with default headers values
func NewAdminUpdateGlobalConfigurationUnauthorized() *AdminUpdateGlobalConfigurationUnauthorized {
	return &AdminUpdateGlobalConfigurationUnauthorized{}
}

/*AdminUpdateGlobalConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateGlobalConfigurationUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateGlobalConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/global-configurations][%d] adminUpdateGlobalConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateGlobalConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateGlobalConfigurationUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGlobalConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminUpdateGlobalConfigurationForbidden creates a AdminUpdateGlobalConfigurationForbidden with default headers values
func NewAdminUpdateGlobalConfigurationForbidden() *AdminUpdateGlobalConfigurationForbidden {
	return &AdminUpdateGlobalConfigurationForbidden{}
}

/*AdminUpdateGlobalConfigurationForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateGlobalConfigurationForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminUpdateGlobalConfigurationForbidden) Error() string {
	return fmt.Sprintf("[PUT /session/v1/admin/global-configurations][%d] adminUpdateGlobalConfigurationForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateGlobalConfigurationForbidden) ToJSONString() string {
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

func (o *AdminUpdateGlobalConfigurationForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdateGlobalConfigurationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
