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

// AdminGetPlayFeatureFlagReader is a Reader for the AdminGetPlayFeatureFlag structure.
type AdminGetPlayFeatureFlagReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlayFeatureFlagReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlayFeatureFlagOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlayFeatureFlagUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPlayFeatureFlagForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlayFeatureFlagInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /match2/v1/admin/namespaces/{namespace}/playfeatureflag returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlayFeatureFlagOK creates a AdminGetPlayFeatureFlagOK with default headers values
func NewAdminGetPlayFeatureFlagOK() *AdminGetPlayFeatureFlagOK {
	return &AdminGetPlayFeatureFlagOK{}
}

/*AdminGetPlayFeatureFlagOK handles this case with default header values.

  OK
*/
type AdminGetPlayFeatureFlagOK struct {
	Payload *match2clientmodels.ModelsPlayFeatureFlag
}

func (o *AdminGetPlayFeatureFlagOK) Error() string {
	return fmt.Sprintf("[GET /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminGetPlayFeatureFlagOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlayFeatureFlagOK) ToJSONString() string {
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

func (o *AdminGetPlayFeatureFlagOK) GetPayload() *match2clientmodels.ModelsPlayFeatureFlag {
	return o.Payload
}

func (o *AdminGetPlayFeatureFlagOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ModelsPlayFeatureFlag)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlayFeatureFlagUnauthorized creates a AdminGetPlayFeatureFlagUnauthorized with default headers values
func NewAdminGetPlayFeatureFlagUnauthorized() *AdminGetPlayFeatureFlagUnauthorized {
	return &AdminGetPlayFeatureFlagUnauthorized{}
}

/*AdminGetPlayFeatureFlagUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetPlayFeatureFlagUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetPlayFeatureFlagUnauthorized) Error() string {
	return fmt.Sprintf("[GET /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminGetPlayFeatureFlagUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlayFeatureFlagUnauthorized) ToJSONString() string {
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

func (o *AdminGetPlayFeatureFlagUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlayFeatureFlagUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlayFeatureFlagForbidden creates a AdminGetPlayFeatureFlagForbidden with default headers values
func NewAdminGetPlayFeatureFlagForbidden() *AdminGetPlayFeatureFlagForbidden {
	return &AdminGetPlayFeatureFlagForbidden{}
}

/*AdminGetPlayFeatureFlagForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetPlayFeatureFlagForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetPlayFeatureFlagForbidden) Error() string {
	return fmt.Sprintf("[GET /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminGetPlayFeatureFlagForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPlayFeatureFlagForbidden) ToJSONString() string {
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

func (o *AdminGetPlayFeatureFlagForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlayFeatureFlagForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlayFeatureFlagInternalServerError creates a AdminGetPlayFeatureFlagInternalServerError with default headers values
func NewAdminGetPlayFeatureFlagInternalServerError() *AdminGetPlayFeatureFlagInternalServerError {
	return &AdminGetPlayFeatureFlagInternalServerError{}
}

/*AdminGetPlayFeatureFlagInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetPlayFeatureFlagInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminGetPlayFeatureFlagInternalServerError) Error() string {
	return fmt.Sprintf("[GET /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminGetPlayFeatureFlagInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlayFeatureFlagInternalServerError) ToJSONString() string {
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

func (o *AdminGetPlayFeatureFlagInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlayFeatureFlagInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
