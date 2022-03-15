// Code generated by go-swagger; DO NOT EDIT.

package stat_configuration

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// CreateStat1Reader is a Reader for the CreateStat1 structure.
type CreateStat1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateStat1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateStat1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateStat1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /social/v1/public/namespaces/{namespace}/stats returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateStat1Created creates a CreateStat1Created with default headers values
func NewCreateStat1Created() *CreateStat1Created {
	return &CreateStat1Created{}
}

/*CreateStat1Created handles this case with default header values.

  Create stat successfully
*/
type CreateStat1Created struct {
	Payload *socialclientmodels.StatInfo
}

func (o *CreateStat1Created) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/stats][%d] createStat1Created  %+v", 201, o.Payload)
}

func (o *CreateStat1Created) GetPayload() *socialclientmodels.StatInfo {
	return o.Payload
}

func (o *CreateStat1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.StatInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateStat1Conflict creates a CreateStat1Conflict with default headers values
func NewCreateStat1Conflict() *CreateStat1Conflict {
	return &CreateStat1Conflict{}
}

/*CreateStat1Conflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12271</td><td>Stat template with code [{statCode}] already exists in namespace [{namespace}]</td></tr></table>
*/
type CreateStat1Conflict struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *CreateStat1Conflict) Error() string {
	return fmt.Sprintf("[POST /social/v1/public/namespaces/{namespace}/stats][%d] createStat1Conflict  %+v", 409, o.Payload)
}

func (o *CreateStat1Conflict) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateStat1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
