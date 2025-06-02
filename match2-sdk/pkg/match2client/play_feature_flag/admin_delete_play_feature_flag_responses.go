// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package play_feature_flag

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// AdminDeletePlayFeatureFlagReader is a Reader for the AdminDeletePlayFeatureFlag structure.
type AdminDeletePlayFeatureFlagReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeletePlayFeatureFlagReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeletePlayFeatureFlagNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeletePlayFeatureFlagUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeletePlayFeatureFlagForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeletePlayFeatureFlagInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /match2/v1/admin/namespaces/{namespace}/playfeatureflag returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeletePlayFeatureFlagNoContent creates a AdminDeletePlayFeatureFlagNoContent with default headers values
func NewAdminDeletePlayFeatureFlagNoContent() *AdminDeletePlayFeatureFlagNoContent {
	return &AdminDeletePlayFeatureFlagNoContent{}
}

/*AdminDeletePlayFeatureFlagNoContent handles this case with default header values.

  No Content
*/
type AdminDeletePlayFeatureFlagNoContent struct {
}

func (o *AdminDeletePlayFeatureFlagNoContent) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminDeletePlayFeatureFlagNoContent ", 204)
}

func (o *AdminDeletePlayFeatureFlagNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeletePlayFeatureFlagUnauthorized creates a AdminDeletePlayFeatureFlagUnauthorized with default headers values
func NewAdminDeletePlayFeatureFlagUnauthorized() *AdminDeletePlayFeatureFlagUnauthorized {
	return &AdminDeletePlayFeatureFlagUnauthorized{}
}

/*AdminDeletePlayFeatureFlagUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeletePlayFeatureFlagUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminDeletePlayFeatureFlagUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminDeletePlayFeatureFlagUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeletePlayFeatureFlagUnauthorized) ToJSONString() string {
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

func (o *AdminDeletePlayFeatureFlagUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlayFeatureFlagUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeletePlayFeatureFlagForbidden creates a AdminDeletePlayFeatureFlagForbidden with default headers values
func NewAdminDeletePlayFeatureFlagForbidden() *AdminDeletePlayFeatureFlagForbidden {
	return &AdminDeletePlayFeatureFlagForbidden{}
}

/*AdminDeletePlayFeatureFlagForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeletePlayFeatureFlagForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminDeletePlayFeatureFlagForbidden) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminDeletePlayFeatureFlagForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeletePlayFeatureFlagForbidden) ToJSONString() string {
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

func (o *AdminDeletePlayFeatureFlagForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlayFeatureFlagForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeletePlayFeatureFlagInternalServerError creates a AdminDeletePlayFeatureFlagInternalServerError with default headers values
func NewAdminDeletePlayFeatureFlagInternalServerError() *AdminDeletePlayFeatureFlagInternalServerError {
	return &AdminDeletePlayFeatureFlagInternalServerError{}
}

/*AdminDeletePlayFeatureFlagInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeletePlayFeatureFlagInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminDeletePlayFeatureFlagInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminDeletePlayFeatureFlagInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeletePlayFeatureFlagInternalServerError) ToJSONString() string {
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

func (o *AdminDeletePlayFeatureFlagInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlayFeatureFlagInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
