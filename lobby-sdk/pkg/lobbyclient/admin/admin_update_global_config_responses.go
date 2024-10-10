// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// AdminUpdateGlobalConfigReader is a Reader for the AdminUpdateGlobalConfig structure.
type AdminUpdateGlobalConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateGlobalConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateGlobalConfigOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateGlobalConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateGlobalConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /lobby/v1/admin/global-configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateGlobalConfigOK creates a AdminUpdateGlobalConfigOK with default headers values
func NewAdminUpdateGlobalConfigOK() *AdminUpdateGlobalConfigOK {
	return &AdminUpdateGlobalConfigOK{}
}

/*AdminUpdateGlobalConfigOK handles this case with default header values.

  OK
*/
type AdminUpdateGlobalConfigOK struct {
	Payload *lobbyclientmodels.ModelGlobalConfiguration
}

func (o *AdminUpdateGlobalConfigOK) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/global-configurations][%d] adminUpdateGlobalConfigOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateGlobalConfigOK) ToJSONString() string {
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

func (o *AdminUpdateGlobalConfigOK) GetPayload() *lobbyclientmodels.ModelGlobalConfiguration {
	return o.Payload
}

func (o *AdminUpdateGlobalConfigOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelGlobalConfiguration)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateGlobalConfigUnauthorized creates a AdminUpdateGlobalConfigUnauthorized with default headers values
func NewAdminUpdateGlobalConfigUnauthorized() *AdminUpdateGlobalConfigUnauthorized {
	return &AdminUpdateGlobalConfigUnauthorized{}
}

/*AdminUpdateGlobalConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdateGlobalConfigUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateGlobalConfigUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/global-configurations][%d] adminUpdateGlobalConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateGlobalConfigUnauthorized) ToJSONString() string {
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

func (o *AdminUpdateGlobalConfigUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateGlobalConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateGlobalConfigForbidden creates a AdminUpdateGlobalConfigForbidden with default headers values
func NewAdminUpdateGlobalConfigForbidden() *AdminUpdateGlobalConfigForbidden {
	return &AdminUpdateGlobalConfigForbidden{}
}

/*AdminUpdateGlobalConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateGlobalConfigForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminUpdateGlobalConfigForbidden) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/global-configurations][%d] adminUpdateGlobalConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateGlobalConfigForbidden) ToJSONString() string {
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

func (o *AdminUpdateGlobalConfigForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminUpdateGlobalConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
