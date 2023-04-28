// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

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

// GetTemplateSlugLocalizationsTemplateV1AdminReader is a Reader for the GetTemplateSlugLocalizationsTemplateV1Admin structure.
type GetTemplateSlugLocalizationsTemplateV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetTemplateSlugLocalizationsTemplateV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetTemplateSlugLocalizationsTemplateV1AdminOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetTemplateSlugLocalizationsTemplateV1AdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetTemplateSlugLocalizationsTemplateV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetTemplateSlugLocalizationsTemplateV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetTemplateSlugLocalizationsTemplateV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetTemplateSlugLocalizationsTemplateV1AdminOK creates a GetTemplateSlugLocalizationsTemplateV1AdminOK with default headers values
func NewGetTemplateSlugLocalizationsTemplateV1AdminOK() *GetTemplateSlugLocalizationsTemplateV1AdminOK {
	return &GetTemplateSlugLocalizationsTemplateV1AdminOK{}
}

/*GetTemplateSlugLocalizationsTemplateV1AdminOK handles this case with default header values.

  OK
*/
type GetTemplateSlugLocalizationsTemplateV1AdminOK struct {
	Payload *lobbyclientmodels.ModelGetAllNotificationTemplateSlugResp
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}][%d] getTemplateSlugLocalizationsTemplateV1AdminOK  %+v", 200, o.ToJSONString())
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminOK) ToJSONString() string {
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

func (o *GetTemplateSlugLocalizationsTemplateV1AdminOK) GetPayload() *lobbyclientmodels.ModelGetAllNotificationTemplateSlugResp {
	return o.Payload
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelGetAllNotificationTemplateSlugResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTemplateSlugLocalizationsTemplateV1AdminBadRequest creates a GetTemplateSlugLocalizationsTemplateV1AdminBadRequest with default headers values
func NewGetTemplateSlugLocalizationsTemplateV1AdminBadRequest() *GetTemplateSlugLocalizationsTemplateV1AdminBadRequest {
	return &GetTemplateSlugLocalizationsTemplateV1AdminBadRequest{}
}

/*GetTemplateSlugLocalizationsTemplateV1AdminBadRequest handles this case with default header values.

  Bad Request
*/
type GetTemplateSlugLocalizationsTemplateV1AdminBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}][%d] getTemplateSlugLocalizationsTemplateV1AdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminBadRequest) ToJSONString() string {
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

func (o *GetTemplateSlugLocalizationsTemplateV1AdminBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTemplateSlugLocalizationsTemplateV1AdminUnauthorized creates a GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized with default headers values
func NewGetTemplateSlugLocalizationsTemplateV1AdminUnauthorized() *GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized {
	return &GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized{}
}

/*GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}][%d] getTemplateSlugLocalizationsTemplateV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized) ToJSONString() string {
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

func (o *GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTemplateSlugLocalizationsTemplateV1AdminForbidden creates a GetTemplateSlugLocalizationsTemplateV1AdminForbidden with default headers values
func NewGetTemplateSlugLocalizationsTemplateV1AdminForbidden() *GetTemplateSlugLocalizationsTemplateV1AdminForbidden {
	return &GetTemplateSlugLocalizationsTemplateV1AdminForbidden{}
}

/*GetTemplateSlugLocalizationsTemplateV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type GetTemplateSlugLocalizationsTemplateV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}][%d] getTemplateSlugLocalizationsTemplateV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminForbidden) ToJSONString() string {
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

func (o *GetTemplateSlugLocalizationsTemplateV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetTemplateSlugLocalizationsTemplateV1AdminNotFound creates a GetTemplateSlugLocalizationsTemplateV1AdminNotFound with default headers values
func NewGetTemplateSlugLocalizationsTemplateV1AdminNotFound() *GetTemplateSlugLocalizationsTemplateV1AdminNotFound {
	return &GetTemplateSlugLocalizationsTemplateV1AdminNotFound{}
}

/*GetTemplateSlugLocalizationsTemplateV1AdminNotFound handles this case with default header values.

  Not Found
*/
type GetTemplateSlugLocalizationsTemplateV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}][%d] getTemplateSlugLocalizationsTemplateV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminNotFound) ToJSONString() string {
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

func (o *GetTemplateSlugLocalizationsTemplateV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetTemplateSlugLocalizationsTemplateV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
