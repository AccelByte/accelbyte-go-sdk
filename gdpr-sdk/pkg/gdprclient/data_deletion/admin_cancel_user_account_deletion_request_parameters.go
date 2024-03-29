// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_deletion

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAdminCancelUserAccountDeletionRequestParams creates a new AdminCancelUserAccountDeletionRequestParams object
// with the default values initialized.
func NewAdminCancelUserAccountDeletionRequestParams() *AdminCancelUserAccountDeletionRequestParams {
	var ()
	return &AdminCancelUserAccountDeletionRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCancelUserAccountDeletionRequestParamsWithTimeout creates a new AdminCancelUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCancelUserAccountDeletionRequestParamsWithTimeout(timeout time.Duration) *AdminCancelUserAccountDeletionRequestParams {
	var ()
	return &AdminCancelUserAccountDeletionRequestParams{

		timeout: timeout,
	}
}

// NewAdminCancelUserAccountDeletionRequestParamsWithContext creates a new AdminCancelUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCancelUserAccountDeletionRequestParamsWithContext(ctx context.Context) *AdminCancelUserAccountDeletionRequestParams {
	var ()
	return &AdminCancelUserAccountDeletionRequestParams{

		Context: ctx,
	}
}

// NewAdminCancelUserAccountDeletionRequestParamsWithHTTPClient creates a new AdminCancelUserAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCancelUserAccountDeletionRequestParamsWithHTTPClient(client *http.Client) *AdminCancelUserAccountDeletionRequestParams {
	var ()
	return &AdminCancelUserAccountDeletionRequestParams{
		HTTPClient: client,
	}
}

/*AdminCancelUserAccountDeletionRequestParams contains all the parameters to send to the API endpoint
for the admin cancel user account deletion request operation typically these are written to a http.Request
*/
type AdminCancelUserAccountDeletionRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  IAM ID of the user

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) WithTimeout(timeout time.Duration) *AdminCancelUserAccountDeletionRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) WithContext(ctx context.Context) *AdminCancelUserAccountDeletionRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) WithHTTPClient(client *http.Client) *AdminCancelUserAccountDeletionRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCancelUserAccountDeletionRequestParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) WithNamespace(namespace string) *AdminCancelUserAccountDeletionRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) WithUserID(userID string) *AdminCancelUserAccountDeletionRequestParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin cancel user account deletion request params
func (o *AdminCancelUserAccountDeletionRequestParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCancelUserAccountDeletionRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
