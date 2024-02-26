// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_v4

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

// PlatformTokenGrantV4Reader is a Reader for the PlatformTokenGrantV4 structure.
type PlatformTokenGrantV4Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PlatformTokenGrantV4Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPlatformTokenGrantV4OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 202:
		result := NewPlatformTokenGrantV4Accepted()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPlatformTokenGrantV4BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPlatformTokenGrantV4Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPlatformTokenGrantV4Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 503:
		result := NewPlatformTokenGrantV4ServiceUnavailable()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v4/oauth/platforms/{platformId}/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPlatformTokenGrantV4OK creates a PlatformTokenGrantV4OK with default headers values
func NewPlatformTokenGrantV4OK() *PlatformTokenGrantV4OK {
	return &PlatformTokenGrantV4OK{}
}

/*PlatformTokenGrantV4OK handles this case with default header values.

  Token returned
*/
type PlatformTokenGrantV4OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponseV3
}

func (o *PlatformTokenGrantV4OK) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/platforms/{platformId}/token][%d] platformTokenGrantV4OK  %+v", 200, o.ToJSONString())
}

func (o *PlatformTokenGrantV4OK) ToJSONString() string {
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

func (o *PlatformTokenGrantV4OK) GetPayload() *iamclientmodels.OauthmodelTokenResponseV3 {
	return o.Payload
}

func (o *PlatformTokenGrantV4OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelTokenResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPlatformTokenGrantV4Accepted creates a PlatformTokenGrantV4Accepted with default headers values
func NewPlatformTokenGrantV4Accepted() *PlatformTokenGrantV4Accepted {
	return &PlatformTokenGrantV4Accepted{}
}

/*PlatformTokenGrantV4Accepted handles this case with default header values.

  Login ticket returned
*/
type PlatformTokenGrantV4Accepted struct {
	Payload *iamclientmodels.OauthmodelLoginQueueTicketResponse
}

func (o *PlatformTokenGrantV4Accepted) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/platforms/{platformId}/token][%d] platformTokenGrantV4Accepted  %+v", 202, o.ToJSONString())
}

func (o *PlatformTokenGrantV4Accepted) ToJSONString() string {
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

func (o *PlatformTokenGrantV4Accepted) GetPayload() *iamclientmodels.OauthmodelLoginQueueTicketResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV4Accepted) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.OauthmodelLoginQueueTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPlatformTokenGrantV4BadRequest creates a PlatformTokenGrantV4BadRequest with default headers values
func NewPlatformTokenGrantV4BadRequest() *PlatformTokenGrantV4BadRequest {
	return &PlatformTokenGrantV4BadRequest{}
}

/*PlatformTokenGrantV4BadRequest handles this case with default header values.

  General request error
*/
type PlatformTokenGrantV4BadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenGrantV4BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/platforms/{platformId}/token][%d] platformTokenGrantV4BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PlatformTokenGrantV4BadRequest) ToJSONString() string {
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

func (o *PlatformTokenGrantV4BadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV4BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformTokenGrantV4Unauthorized creates a PlatformTokenGrantV4Unauthorized with default headers values
func NewPlatformTokenGrantV4Unauthorized() *PlatformTokenGrantV4Unauthorized {
	return &PlatformTokenGrantV4Unauthorized{}
}

/*PlatformTokenGrantV4Unauthorized handles this case with default header values.

  Client authentication failed
*/
type PlatformTokenGrantV4Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenGrantV4Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/platforms/{platformId}/token][%d] platformTokenGrantV4Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PlatformTokenGrantV4Unauthorized) ToJSONString() string {
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

func (o *PlatformTokenGrantV4Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV4Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformTokenGrantV4Forbidden creates a PlatformTokenGrantV4Forbidden with default headers values
func NewPlatformTokenGrantV4Forbidden() *PlatformTokenGrantV4Forbidden {
	return &PlatformTokenGrantV4Forbidden{}
}

/*PlatformTokenGrantV4Forbidden handles this case with default header values.

  Forbidden
*/
type PlatformTokenGrantV4Forbidden struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenGrantV4Forbidden) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/platforms/{platformId}/token][%d] platformTokenGrantV4Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PlatformTokenGrantV4Forbidden) ToJSONString() string {
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

func (o *PlatformTokenGrantV4Forbidden) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV4Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPlatformTokenGrantV4ServiceUnavailable creates a PlatformTokenGrantV4ServiceUnavailable with default headers values
func NewPlatformTokenGrantV4ServiceUnavailable() *PlatformTokenGrantV4ServiceUnavailable {
	return &PlatformTokenGrantV4ServiceUnavailable{}
}

/*PlatformTokenGrantV4ServiceUnavailable handles this case with default header values.

  Third Party Server timeout or unavailable
*/
type PlatformTokenGrantV4ServiceUnavailable struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenGrantV4ServiceUnavailable) Error() string {
	return fmt.Sprintf("[POST /iam/v4/oauth/platforms/{platformId}/token][%d] platformTokenGrantV4ServiceUnavailable  %+v", 503, o.ToJSONString())
}

func (o *PlatformTokenGrantV4ServiceUnavailable) ToJSONString() string {
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

func (o *PlatformTokenGrantV4ServiceUnavailable) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV4ServiceUnavailable) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
