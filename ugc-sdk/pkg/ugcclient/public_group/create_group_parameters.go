// Code generated by go-swagger; DO NOT EDIT.

package public_group

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewCreateGroupParams creates a new CreateGroupParams object
// with the default values initialized.
func NewCreateGroupParams() *CreateGroupParams {
	var ()
	return &CreateGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateGroupParamsWithTimeout creates a new CreateGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateGroupParamsWithTimeout(timeout time.Duration) *CreateGroupParams {
	var ()
	return &CreateGroupParams{

		timeout: timeout,
	}
}

// NewCreateGroupParamsWithContext creates a new CreateGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateGroupParamsWithContext(ctx context.Context) *CreateGroupParams {
	var ()
	return &CreateGroupParams{

		Context: ctx,
	}
}

// NewCreateGroupParamsWithHTTPClient creates a new CreateGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateGroupParamsWithHTTPClient(client *http.Client) *CreateGroupParams {
	var ()
	return &CreateGroupParams{
		HTTPClient: client,
	}
}

/*CreateGroupParams contains all the parameters to send to the API endpoint
for the create group operation typically these are written to a http.Request
*/
type CreateGroupParams struct {

	/*Body*/
	Body *ugcclientmodels.ModelsCreateGroupRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the create group params
func (o *CreateGroupParams) WithTimeout(timeout time.Duration) *CreateGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create group params
func (o *CreateGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create group params
func (o *CreateGroupParams) WithContext(ctx context.Context) *CreateGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create group params
func (o *CreateGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the create group params
func (o *CreateGroupParams) WithHTTPClient(client *http.Client) *CreateGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create group params
func (o *CreateGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the create group params
func (o *CreateGroupParams) WithBody(body *ugcclientmodels.ModelsCreateGroupRequest) *CreateGroupParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create group params
func (o *CreateGroupParams) SetBody(body *ugcclientmodels.ModelsCreateGroupRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create group params
func (o *CreateGroupParams) WithNamespace(namespace string) *CreateGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create group params
func (o *CreateGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the create group params
func (o *CreateGroupParams) WithUserID(userID string) *CreateGroupParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the create group params
func (o *CreateGroupParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}