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

// AdminListGlobalConfigurationReader is a Reader for the AdminListGlobalConfiguration structure.
type AdminListGlobalConfigurationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListGlobalConfigurationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListGlobalConfigurationOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListGlobalConfigurationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListGlobalConfigurationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /session/v1/admin/global-configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListGlobalConfigurationOK creates a AdminListGlobalConfigurationOK with default headers values
func NewAdminListGlobalConfigurationOK() *AdminListGlobalConfigurationOK {
	return &AdminListGlobalConfigurationOK{}
}

/*AdminListGlobalConfigurationOK handles this case with default header values.

  OK
*/
type AdminListGlobalConfigurationOK struct {
	Payload *sessionclientmodels.ApimodelsGlobalConfigurationResponse
}

func (o *AdminListGlobalConfigurationOK) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/global-configurations][%d] adminListGlobalConfigurationOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListGlobalConfigurationOK) ToJSONString() string {
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

func (o *AdminListGlobalConfigurationOK) GetPayload() *sessionclientmodels.ApimodelsGlobalConfigurationResponse {
	return o.Payload
}

func (o *AdminListGlobalConfigurationOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListGlobalConfigurationUnauthorized creates a AdminListGlobalConfigurationUnauthorized with default headers values
func NewAdminListGlobalConfigurationUnauthorized() *AdminListGlobalConfigurationUnauthorized {
	return &AdminListGlobalConfigurationUnauthorized{}
}

/*AdminListGlobalConfigurationUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminListGlobalConfigurationUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminListGlobalConfigurationUnauthorized) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/global-configurations][%d] adminListGlobalConfigurationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListGlobalConfigurationUnauthorized) ToJSONString() string {
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

func (o *AdminListGlobalConfigurationUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListGlobalConfigurationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListGlobalConfigurationForbidden creates a AdminListGlobalConfigurationForbidden with default headers values
func NewAdminListGlobalConfigurationForbidden() *AdminListGlobalConfigurationForbidden {
	return &AdminListGlobalConfigurationForbidden{}
}

/*AdminListGlobalConfigurationForbidden handles this case with default header values.

  Forbidden
*/
type AdminListGlobalConfigurationForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminListGlobalConfigurationForbidden) Error() string {
	return fmt.Sprintf("[GET /session/v1/admin/global-configurations][%d] adminListGlobalConfigurationForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListGlobalConfigurationForbidden) ToJSONString() string {
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

func (o *AdminListGlobalConfigurationForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListGlobalConfigurationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
