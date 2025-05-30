// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminRetrieveUserThirdPartyPlatformTokenV3Reader is a Reader for the AdminRetrieveUserThirdPartyPlatformTokenV3 structure.
type AdminRetrieveUserThirdPartyPlatformTokenV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminRetrieveUserThirdPartyPlatformTokenV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminRetrieveUserThirdPartyPlatformTokenV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminRetrieveUserThirdPartyPlatformTokenV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRetrieveUserThirdPartyPlatformTokenV3OK creates a AdminRetrieveUserThirdPartyPlatformTokenV3OK with default headers values
func NewAdminRetrieveUserThirdPartyPlatformTokenV3OK() *AdminRetrieveUserThirdPartyPlatformTokenV3OK {
	return &AdminRetrieveUserThirdPartyPlatformTokenV3OK{}
}

/*AdminRetrieveUserThirdPartyPlatformTokenV3OK handles this case with default header values.

  Token returned
*/
type AdminRetrieveUserThirdPartyPlatformTokenV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenThirdPartyResponse
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken][%d] adminRetrieveUserThirdPartyPlatformTokenV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3OK) ToJSONString() string {
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

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3OK) GetPayload() *iamclientmodels.OauthmodelTokenThirdPartyResponse {
	return o.Payload
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenThirdPartyResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized creates a AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized with default headers values
func NewAdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized() *AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized {
	return &AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized{}
}

/*AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized handles this case with default header values.

  Client authentication failed
*/
type AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken][%d] adminRetrieveUserThirdPartyPlatformTokenV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized) ToJSONString() string {
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

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminRetrieveUserThirdPartyPlatformTokenV3Forbidden creates a AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden with default headers values
func NewAdminRetrieveUserThirdPartyPlatformTokenV3Forbidden() *AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden {
	return &AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden{}
}

/*AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden handles this case with default header values.

  Unauthorized access
*/
type AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken][%d] adminRetrieveUserThirdPartyPlatformTokenV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden) ToJSONString() string {
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

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminRetrieveUserThirdPartyPlatformTokenV3NotFound creates a AdminRetrieveUserThirdPartyPlatformTokenV3NotFound with default headers values
func NewAdminRetrieveUserThirdPartyPlatformTokenV3NotFound() *AdminRetrieveUserThirdPartyPlatformTokenV3NotFound {
	return &AdminRetrieveUserThirdPartyPlatformTokenV3NotFound{}
}

/*AdminRetrieveUserThirdPartyPlatformTokenV3NotFound handles this case with default header values.

  Platform Token Not Found
*/
type AdminRetrieveUserThirdPartyPlatformTokenV3NotFound struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken][%d] adminRetrieveUserThirdPartyPlatformTokenV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3NotFound) ToJSONString() string {
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

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3NotFound) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *AdminRetrieveUserThirdPartyPlatformTokenV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
