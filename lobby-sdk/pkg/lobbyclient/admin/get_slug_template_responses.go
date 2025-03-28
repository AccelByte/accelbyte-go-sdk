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

// GetSlugTemplateReader is a Reader for the GetSlugTemplate structure.
type GetSlugTemplateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetSlugTemplateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetSlugTemplateOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetSlugTemplateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetSlugTemplateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetSlugTemplateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetSlugTemplateNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /notification/namespaces/{namespace}/templates/{templateSlug} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetSlugTemplateOK creates a GetSlugTemplateOK with default headers values
func NewGetSlugTemplateOK() *GetSlugTemplateOK {
	return &GetSlugTemplateOK{}
}

/*GetSlugTemplateOK handles this case with default header values.

  OK
*/
type GetSlugTemplateOK struct {
	Payload *lobbyclientmodels.ModelTemplateLocalizationResponse
}

func (o *GetSlugTemplateOK) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/templates/{templateSlug}][%d] getSlugTemplateOK  %+v", 200, o.ToJSONString())
}

func (o *GetSlugTemplateOK) ToJSONString() string {
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

func (o *GetSlugTemplateOK) GetPayload() *lobbyclientmodels.ModelTemplateLocalizationResponse {
	return o.Payload
}

func (o *GetSlugTemplateOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelTemplateLocalizationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetSlugTemplateBadRequest creates a GetSlugTemplateBadRequest with default headers values
func NewGetSlugTemplateBadRequest() *GetSlugTemplateBadRequest {
	return &GetSlugTemplateBadRequest{}
}

/*GetSlugTemplateBadRequest handles this case with default header values.

  Bad Request
*/
type GetSlugTemplateBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetSlugTemplateBadRequest) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/templates/{templateSlug}][%d] getSlugTemplateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetSlugTemplateBadRequest) ToJSONString() string {
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

func (o *GetSlugTemplateBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetSlugTemplateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSlugTemplateUnauthorized creates a GetSlugTemplateUnauthorized with default headers values
func NewGetSlugTemplateUnauthorized() *GetSlugTemplateUnauthorized {
	return &GetSlugTemplateUnauthorized{}
}

/*GetSlugTemplateUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetSlugTemplateUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetSlugTemplateUnauthorized) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/templates/{templateSlug}][%d] getSlugTemplateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetSlugTemplateUnauthorized) ToJSONString() string {
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

func (o *GetSlugTemplateUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetSlugTemplateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSlugTemplateForbidden creates a GetSlugTemplateForbidden with default headers values
func NewGetSlugTemplateForbidden() *GetSlugTemplateForbidden {
	return &GetSlugTemplateForbidden{}
}

/*GetSlugTemplateForbidden handles this case with default header values.

  Forbidden
*/
type GetSlugTemplateForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetSlugTemplateForbidden) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/templates/{templateSlug}][%d] getSlugTemplateForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetSlugTemplateForbidden) ToJSONString() string {
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

func (o *GetSlugTemplateForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetSlugTemplateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetSlugTemplateNotFound creates a GetSlugTemplateNotFound with default headers values
func NewGetSlugTemplateNotFound() *GetSlugTemplateNotFound {
	return &GetSlugTemplateNotFound{}
}

/*GetSlugTemplateNotFound handles this case with default header values.

  Not Found
*/
type GetSlugTemplateNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *GetSlugTemplateNotFound) Error() string {
	return fmt.Sprintf("[GET /notification/namespaces/{namespace}/templates/{templateSlug}][%d] getSlugTemplateNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetSlugTemplateNotFound) ToJSONString() string {
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

func (o *GetSlugTemplateNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *GetSlugTemplateNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
