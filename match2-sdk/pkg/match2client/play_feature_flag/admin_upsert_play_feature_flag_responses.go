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

// AdminUpsertPlayFeatureFlagReader is a Reader for the AdminUpsertPlayFeatureFlag structure.
type AdminUpsertPlayFeatureFlagReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpsertPlayFeatureFlagReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpsertPlayFeatureFlagOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpsertPlayFeatureFlagBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpsertPlayFeatureFlagUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpsertPlayFeatureFlagForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpsertPlayFeatureFlagInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /match2/v1/admin/namespaces/{namespace}/playfeatureflag returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpsertPlayFeatureFlagOK creates a AdminUpsertPlayFeatureFlagOK with default headers values
func NewAdminUpsertPlayFeatureFlagOK() *AdminUpsertPlayFeatureFlagOK {
	return &AdminUpsertPlayFeatureFlagOK{}
}

/*AdminUpsertPlayFeatureFlagOK handles this case with default header values.

  OK
*/
type AdminUpsertPlayFeatureFlagOK struct {
	Payload *match2clientmodels.ModelsPlayFeatureFlag
}

func (o *AdminUpsertPlayFeatureFlagOK) Error() string {
	return fmt.Sprintf("[POST /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminUpsertPlayFeatureFlagOK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpsertPlayFeatureFlagOK) ToJSONString() string {
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

func (o *AdminUpsertPlayFeatureFlagOK) GetPayload() *match2clientmodels.ModelsPlayFeatureFlag {
	return o.Payload
}

func (o *AdminUpsertPlayFeatureFlagOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpsertPlayFeatureFlagBadRequest creates a AdminUpsertPlayFeatureFlagBadRequest with default headers values
func NewAdminUpsertPlayFeatureFlagBadRequest() *AdminUpsertPlayFeatureFlagBadRequest {
	return &AdminUpsertPlayFeatureFlagBadRequest{}
}

/*AdminUpsertPlayFeatureFlagBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpsertPlayFeatureFlagBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminUpsertPlayFeatureFlagBadRequest) Error() string {
	return fmt.Sprintf("[POST /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminUpsertPlayFeatureFlagBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpsertPlayFeatureFlagBadRequest) ToJSONString() string {
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

func (o *AdminUpsertPlayFeatureFlagBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpsertPlayFeatureFlagBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpsertPlayFeatureFlagUnauthorized creates a AdminUpsertPlayFeatureFlagUnauthorized with default headers values
func NewAdminUpsertPlayFeatureFlagUnauthorized() *AdminUpsertPlayFeatureFlagUnauthorized {
	return &AdminUpsertPlayFeatureFlagUnauthorized{}
}

/*AdminUpsertPlayFeatureFlagUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpsertPlayFeatureFlagUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminUpsertPlayFeatureFlagUnauthorized) Error() string {
	return fmt.Sprintf("[POST /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminUpsertPlayFeatureFlagUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpsertPlayFeatureFlagUnauthorized) ToJSONString() string {
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

func (o *AdminUpsertPlayFeatureFlagUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpsertPlayFeatureFlagUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpsertPlayFeatureFlagForbidden creates a AdminUpsertPlayFeatureFlagForbidden with default headers values
func NewAdminUpsertPlayFeatureFlagForbidden() *AdminUpsertPlayFeatureFlagForbidden {
	return &AdminUpsertPlayFeatureFlagForbidden{}
}

/*AdminUpsertPlayFeatureFlagForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpsertPlayFeatureFlagForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminUpsertPlayFeatureFlagForbidden) Error() string {
	return fmt.Sprintf("[POST /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminUpsertPlayFeatureFlagForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpsertPlayFeatureFlagForbidden) ToJSONString() string {
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

func (o *AdminUpsertPlayFeatureFlagForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpsertPlayFeatureFlagForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpsertPlayFeatureFlagInternalServerError creates a AdminUpsertPlayFeatureFlagInternalServerError with default headers values
func NewAdminUpsertPlayFeatureFlagInternalServerError() *AdminUpsertPlayFeatureFlagInternalServerError {
	return &AdminUpsertPlayFeatureFlagInternalServerError{}
}

/*AdminUpsertPlayFeatureFlagInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpsertPlayFeatureFlagInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *AdminUpsertPlayFeatureFlagInternalServerError) Error() string {
	return fmt.Sprintf("[POST /match2/v1/admin/namespaces/{namespace}/playfeatureflag][%d] adminUpsertPlayFeatureFlagInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpsertPlayFeatureFlagInternalServerError) ToJSONString() string {
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

func (o *AdminUpsertPlayFeatureFlagInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpsertPlayFeatureFlagInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
