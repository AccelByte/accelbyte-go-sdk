// Code generated by go-swagger; DO NOT EDIT.

package o_auth2_0

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// PlatformTokenGrantV3Reader is a Reader for the PlatformTokenGrantV3 structure.
type PlatformTokenGrantV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PlatformTokenGrantV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPlatformTokenGrantV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPlatformTokenGrantV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPlatformTokenGrantV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/oauth/platforms/{platformId}/token returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPlatformTokenGrantV3OK creates a PlatformTokenGrantV3OK with default headers values
func NewPlatformTokenGrantV3OK() *PlatformTokenGrantV3OK {
	return &PlatformTokenGrantV3OK{}
}

/*PlatformTokenGrantV3OK handles this case with default header values.

  Token returned
*/
type PlatformTokenGrantV3OK struct {
	Payload *iamclientmodels.OauthmodelTokenResponse
}

func (o *PlatformTokenGrantV3OK) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/platforms/{platformId}/token][%d] platformTokenGrantV3OK  %+v", 200, o.Payload)
}

func (o *PlatformTokenGrantV3OK) GetPayload() *iamclientmodels.OauthmodelTokenResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.OauthmodelTokenResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPlatformTokenGrantV3BadRequest creates a PlatformTokenGrantV3BadRequest with default headers values
func NewPlatformTokenGrantV3BadRequest() *PlatformTokenGrantV3BadRequest {
	return &PlatformTokenGrantV3BadRequest{}
}

/*PlatformTokenGrantV3BadRequest handles this case with default header values.

  General request error
*/
type PlatformTokenGrantV3BadRequest struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenGrantV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/platforms/{platformId}/token][%d] platformTokenGrantV3BadRequest  %+v", 400, o.Payload)
}

func (o *PlatformTokenGrantV3BadRequest) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPlatformTokenGrantV3Unauthorized creates a PlatformTokenGrantV3Unauthorized with default headers values
func NewPlatformTokenGrantV3Unauthorized() *PlatformTokenGrantV3Unauthorized {
	return &PlatformTokenGrantV3Unauthorized{}
}

/*PlatformTokenGrantV3Unauthorized handles this case with default header values.

  Client authentication failed
*/
type PlatformTokenGrantV3Unauthorized struct {
	Payload *iamclientmodels.OauthmodelErrorResponse
}

func (o *PlatformTokenGrantV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/v3/oauth/platforms/{platformId}/token][%d] platformTokenGrantV3Unauthorized  %+v", 401, o.Payload)
}

func (o *PlatformTokenGrantV3Unauthorized) GetPayload() *iamclientmodels.OauthmodelErrorResponse {
	return o.Payload
}

func (o *PlatformTokenGrantV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.OauthmodelErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
