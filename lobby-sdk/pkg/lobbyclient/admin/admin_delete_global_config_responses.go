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

// AdminDeleteGlobalConfigReader is a Reader for the AdminDeleteGlobalConfig structure.
type AdminDeleteGlobalConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteGlobalConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeleteGlobalConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteGlobalConfigUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteGlobalConfigForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /lobby/v1/admin/global-configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteGlobalConfigNoContent creates a AdminDeleteGlobalConfigNoContent with default headers values
func NewAdminDeleteGlobalConfigNoContent() *AdminDeleteGlobalConfigNoContent {
	return &AdminDeleteGlobalConfigNoContent{}
}

/*AdminDeleteGlobalConfigNoContent handles this case with default header values.

  No Content
*/
type AdminDeleteGlobalConfigNoContent struct {
	Payload string
}

func (o *AdminDeleteGlobalConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/global-configurations][%d] adminDeleteGlobalConfigNoContent  %+v", 204, o.ToJSONString())
}

func (o *AdminDeleteGlobalConfigNoContent) ToJSONString() string {
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

func (o *AdminDeleteGlobalConfigNoContent) GetPayload() string {
	return o.Payload
}

func (o *AdminDeleteGlobalConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteGlobalConfigUnauthorized creates a AdminDeleteGlobalConfigUnauthorized with default headers values
func NewAdminDeleteGlobalConfigUnauthorized() *AdminDeleteGlobalConfigUnauthorized {
	return &AdminDeleteGlobalConfigUnauthorized{}
}

/*AdminDeleteGlobalConfigUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteGlobalConfigUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteGlobalConfigUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/global-configurations][%d] adminDeleteGlobalConfigUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteGlobalConfigUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteGlobalConfigUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteGlobalConfigUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminDeleteGlobalConfigForbidden creates a AdminDeleteGlobalConfigForbidden with default headers values
func NewAdminDeleteGlobalConfigForbidden() *AdminDeleteGlobalConfigForbidden {
	return &AdminDeleteGlobalConfigForbidden{}
}

/*AdminDeleteGlobalConfigForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteGlobalConfigForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminDeleteGlobalConfigForbidden) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/global-configurations][%d] adminDeleteGlobalConfigForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteGlobalConfigForbidden) ToJSONString() string {
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

func (o *AdminDeleteGlobalConfigForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminDeleteGlobalConfigForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
