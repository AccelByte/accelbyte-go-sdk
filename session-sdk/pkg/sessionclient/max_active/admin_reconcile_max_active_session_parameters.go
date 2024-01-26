// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package max_active

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewAdminReconcileMaxActiveSessionParams creates a new AdminReconcileMaxActiveSessionParams object
// with the default values initialized.
func NewAdminReconcileMaxActiveSessionParams() *AdminReconcileMaxActiveSessionParams {
	var ()
	return &AdminReconcileMaxActiveSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminReconcileMaxActiveSessionParamsWithTimeout creates a new AdminReconcileMaxActiveSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminReconcileMaxActiveSessionParamsWithTimeout(timeout time.Duration) *AdminReconcileMaxActiveSessionParams {
	var ()
	return &AdminReconcileMaxActiveSessionParams{

		timeout: timeout,
	}
}

// NewAdminReconcileMaxActiveSessionParamsWithContext creates a new AdminReconcileMaxActiveSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminReconcileMaxActiveSessionParamsWithContext(ctx context.Context) *AdminReconcileMaxActiveSessionParams {
	var ()
	return &AdminReconcileMaxActiveSessionParams{

		Context: ctx,
	}
}

// NewAdminReconcileMaxActiveSessionParamsWithHTTPClient creates a new AdminReconcileMaxActiveSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminReconcileMaxActiveSessionParamsWithHTTPClient(client *http.Client) *AdminReconcileMaxActiveSessionParams {
	var ()
	return &AdminReconcileMaxActiveSessionParams{
		HTTPClient: client,
	}
}

/*AdminReconcileMaxActiveSessionParams contains all the parameters to send to the API endpoint
for the admin reconcile max active session operation typically these are written to a http.Request
*/
type AdminReconcileMaxActiveSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ModelsRequestReconcileMaxActiveSession
	/*Name
	  configuration name

	*/
	Name string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) WithTimeout(timeout time.Duration) *AdminReconcileMaxActiveSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) WithContext(ctx context.Context) *AdminReconcileMaxActiveSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) WithHTTPClient(client *http.Client) *AdminReconcileMaxActiveSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminReconcileMaxActiveSessionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) WithBody(body *sessionclientmodels.ModelsRequestReconcileMaxActiveSession) *AdminReconcileMaxActiveSessionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) SetBody(body *sessionclientmodels.ModelsRequestReconcileMaxActiveSession) {
	o.Body = body
}

// WithName adds the name to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) WithName(name string) *AdminReconcileMaxActiveSessionParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) WithNamespace(namespace string) *AdminReconcileMaxActiveSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin reconcile max active session params
func (o *AdminReconcileMaxActiveSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminReconcileMaxActiveSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param name
	if err := r.SetPathParam("name", o.Name); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
