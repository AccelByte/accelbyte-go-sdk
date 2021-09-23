// Code generated by go-swagger; DO NOT EDIT.

package data_deletion

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
)

// NewPublicCancelUserAccountDeletionRequestParams creates a new PublicCancelUserAccountDeletionRequestParams object
// with the default values initialized.
func NewPublicCancelUserAccountDeletionRequestParams() *PublicCancelUserAccountDeletionRequestParams {
	var ()
	return &PublicCancelUserAccountDeletionRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCancelUserAccountDeletionRequestParamsWithTimeout creates a new PublicCancelUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCancelUserAccountDeletionRequestParamsWithTimeout(timeout time.Duration) *PublicCancelUserAccountDeletionRequestParams {
	var ()
	return &PublicCancelUserAccountDeletionRequestParams{

		timeout: timeout,
	}
}

// NewPublicCancelUserAccountDeletionRequestParamsWithContext creates a new PublicCancelUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCancelUserAccountDeletionRequestParamsWithContext(ctx context.Context) *PublicCancelUserAccountDeletionRequestParams {
	var ()
	return &PublicCancelUserAccountDeletionRequestParams{

		Context: ctx,
	}
}

// NewPublicCancelUserAccountDeletionRequestParamsWithHTTPClient creates a new PublicCancelUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCancelUserAccountDeletionRequestParamsWithHTTPClient(client *http.Client) *PublicCancelUserAccountDeletionRequestParams {
	var ()
	return &PublicCancelUserAccountDeletionRequestParams{
		HTTPClient: client,
	}
}

/*PublicCancelUserAccountDeletionRequestParams contains all the parameters to send to the API endpoint
for the public cancel user account deletion request operation typically these are written to a http.Request
*/
type PublicCancelUserAccountDeletionRequestParams struct {

	/*Namespace
	  namespace of the user

	*/
	Namespace string
	/*UserID
	  IAM ID of the user

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) WithTimeout(timeout time.Duration) *PublicCancelUserAccountDeletionRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) WithContext(ctx context.Context) *PublicCancelUserAccountDeletionRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) WithHTTPClient(client *http.Client) *PublicCancelUserAccountDeletionRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) WithNamespace(namespace string) *PublicCancelUserAccountDeletionRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) WithUserID(userID string) *PublicCancelUserAccountDeletionRequestParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public cancel user account deletion request params
func (o *PublicCancelUserAccountDeletionRequestParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCancelUserAccountDeletionRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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