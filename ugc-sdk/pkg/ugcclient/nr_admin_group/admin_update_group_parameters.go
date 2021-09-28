// Code generated by go-swagger; DO NOT EDIT.

package nr_admin_group

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

// NewAdminUpdateGroupParams creates a new AdminUpdateGroupParams object
// with the default values initialized.
func NewAdminUpdateGroupParams() *AdminUpdateGroupParams {
	var ()
	return &AdminUpdateGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateGroupParamsWithTimeout creates a new AdminUpdateGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateGroupParamsWithTimeout(timeout time.Duration) *AdminUpdateGroupParams {
	var ()
	return &AdminUpdateGroupParams{

		timeout: timeout,
	}
}

// NewAdminUpdateGroupParamsWithContext creates a new AdminUpdateGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateGroupParamsWithContext(ctx context.Context) *AdminUpdateGroupParams {
	var ()
	return &AdminUpdateGroupParams{

		Context: ctx,
	}
}

// NewAdminUpdateGroupParamsWithHTTPClient creates a new AdminUpdateGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateGroupParamsWithHTTPClient(client *http.Client) *AdminUpdateGroupParams {
	var ()
	return &AdminUpdateGroupParams{
		HTTPClient: client,
	}
}

/*AdminUpdateGroupParams contains all the parameters to send to the API endpoint
for the admin update group operation typically these are written to a http.Request
*/
type AdminUpdateGroupParams struct {

	/*Body*/
	Body *ugcclientmodels.ModelsCreateGroupRequest
	/*GroupID
	  group ID

	*/
	GroupID string
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

// WithTimeout adds the timeout to the admin update group params
func (o *AdminUpdateGroupParams) WithTimeout(timeout time.Duration) *AdminUpdateGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update group params
func (o *AdminUpdateGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update group params
func (o *AdminUpdateGroupParams) WithContext(ctx context.Context) *AdminUpdateGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update group params
func (o *AdminUpdateGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the admin update group params
func (o *AdminUpdateGroupParams) WithHTTPClient(client *http.Client) *AdminUpdateGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update group params
func (o *AdminUpdateGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the admin update group params
func (o *AdminUpdateGroupParams) WithBody(body *ugcclientmodels.ModelsCreateGroupRequest) *AdminUpdateGroupParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update group params
func (o *AdminUpdateGroupParams) SetBody(body *ugcclientmodels.ModelsCreateGroupRequest) {
	o.Body = body
}

// WithGroupID adds the groupID to the admin update group params
func (o *AdminUpdateGroupParams) WithGroupID(groupID string) *AdminUpdateGroupParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the admin update group params
func (o *AdminUpdateGroupParams) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the admin update group params
func (o *AdminUpdateGroupParams) WithNamespace(namespace string) *AdminUpdateGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update group params
func (o *AdminUpdateGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update group params
func (o *AdminUpdateGroupParams) WithUserID(userID string) *AdminUpdateGroupParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update group params
func (o *AdminUpdateGroupParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
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
