// Code generated by go-swagger; DO NOT EDIT.

package users

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
	"github.com/go-openapi/swag"
)

// NewDeleteUserPermissionParams creates a new DeleteUserPermissionParams object
// with the default values initialized.
func NewDeleteUserPermissionParams() *DeleteUserPermissionParams {
	var ()
	return &DeleteUserPermissionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserPermissionParamsWithTimeout creates a new DeleteUserPermissionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserPermissionParamsWithTimeout(timeout time.Duration) *DeleteUserPermissionParams {
	var ()
	return &DeleteUserPermissionParams{

		timeout: timeout,
	}
}

// NewDeleteUserPermissionParamsWithContext creates a new DeleteUserPermissionParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserPermissionParamsWithContext(ctx context.Context) *DeleteUserPermissionParams {
	var ()
	return &DeleteUserPermissionParams{

		Context: ctx,
	}
}

// NewDeleteUserPermissionParamsWithHTTPClient creates a new DeleteUserPermissionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserPermissionParamsWithHTTPClient(client *http.Client) *DeleteUserPermissionParams {
	var ()
	return &DeleteUserPermissionParams{
		HTTPClient: client,
	}
}

/*DeleteUserPermissionParams contains all the parameters to send to the API endpoint
for the delete user permission operation typically these are written to a http.Request
*/
type DeleteUserPermissionParams struct {

	/*Action
	  Action (1..15)

	*/
	Action int64
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Resource
	  Resource Name

	*/
	Resource string
	/*UserID
	  User id

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the delete user permission params
func (o *DeleteUserPermissionParams) WithTimeout(timeout time.Duration) *DeleteUserPermissionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user permission params
func (o *DeleteUserPermissionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user permission params
func (o *DeleteUserPermissionParams) WithContext(ctx context.Context) *DeleteUserPermissionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user permission params
func (o *DeleteUserPermissionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the delete user permission params
func (o *DeleteUserPermissionParams) WithHTTPClient(client *http.Client) *DeleteUserPermissionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user permission params
func (o *DeleteUserPermissionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithAction adds the action to the delete user permission params
func (o *DeleteUserPermissionParams) WithAction(action int64) *DeleteUserPermissionParams {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the delete user permission params
func (o *DeleteUserPermissionParams) SetAction(action int64) {
	o.Action = action
}

// WithNamespace adds the namespace to the delete user permission params
func (o *DeleteUserPermissionParams) WithNamespace(namespace string) *DeleteUserPermissionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user permission params
func (o *DeleteUserPermissionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithResource adds the resource to the delete user permission params
func (o *DeleteUserPermissionParams) WithResource(resource string) *DeleteUserPermissionParams {
	o.SetResource(resource)
	return o
}

// SetResource adds the resource to the delete user permission params
func (o *DeleteUserPermissionParams) SetResource(resource string) {
	o.Resource = resource
}

// WithUserID adds the userID to the delete user permission params
func (o *DeleteUserPermissionParams) WithUserID(userID string) *DeleteUserPermissionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user permission params
func (o *DeleteUserPermissionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserPermissionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param action
	if err := r.SetPathParam("action", swag.FormatInt64(o.Action)); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param resource
	if err := r.SetPathParam("resource", o.Resource); err != nil {
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
