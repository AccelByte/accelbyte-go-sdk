// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewUpdateClientPermissionParams creates a new UpdateClientPermissionParams object
// with the default values initialized.
func NewUpdateClientPermissionParams() *UpdateClientPermissionParams {
	var ()
	return &UpdateClientPermissionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateClientPermissionParamsWithTimeout creates a new UpdateClientPermissionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateClientPermissionParamsWithTimeout(timeout time.Duration) *UpdateClientPermissionParams {
	var ()
	return &UpdateClientPermissionParams{

		timeout: timeout,
	}
}

// NewUpdateClientPermissionParamsWithContext creates a new UpdateClientPermissionParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateClientPermissionParamsWithContext(ctx context.Context) *UpdateClientPermissionParams {
	var ()
	return &UpdateClientPermissionParams{

		Context: ctx,
	}
}

// NewUpdateClientPermissionParamsWithHTTPClient creates a new UpdateClientPermissionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateClientPermissionParamsWithHTTPClient(client *http.Client) *UpdateClientPermissionParams {
	var ()
	return &UpdateClientPermissionParams{
		HTTPClient: client,
	}
}

/*UpdateClientPermissionParams contains all the parameters to send to the API endpoint
for the update client permission operation typically these are written to a http.Request
*/
type UpdateClientPermissionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.AccountcommonClientPermissions
	/*ClientID
	  Client ID

	*/
	ClientID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update client permission params
func (o *UpdateClientPermissionParams) WithTimeout(timeout time.Duration) *UpdateClientPermissionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update client permission params
func (o *UpdateClientPermissionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update client permission params
func (o *UpdateClientPermissionParams) WithContext(ctx context.Context) *UpdateClientPermissionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update client permission params
func (o *UpdateClientPermissionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update client permission params
func (o *UpdateClientPermissionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update client permission params
func (o *UpdateClientPermissionParams) WithHTTPClient(client *http.Client) *UpdateClientPermissionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update client permission params
func (o *UpdateClientPermissionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update client permission params
func (o *UpdateClientPermissionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateClientPermissionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update client permission params
func (o *UpdateClientPermissionParams) WithBody(body *iamclientmodels.AccountcommonClientPermissions) *UpdateClientPermissionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update client permission params
func (o *UpdateClientPermissionParams) SetBody(body *iamclientmodels.AccountcommonClientPermissions) {
	o.Body = body
}

// WithClientID adds the clientID to the update client permission params
func (o *UpdateClientPermissionParams) WithClientID(clientID string) *UpdateClientPermissionParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the update client permission params
func (o *UpdateClientPermissionParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateClientPermissionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param clientId
	if err := r.SetPathParam("clientId", o.ClientID); err != nil {
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
