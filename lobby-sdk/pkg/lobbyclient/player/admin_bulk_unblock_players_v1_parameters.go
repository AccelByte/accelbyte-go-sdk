// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewAdminBulkUnblockPlayersV1Params creates a new AdminBulkUnblockPlayersV1Params object
// with the default values initialized.
func NewAdminBulkUnblockPlayersV1Params() *AdminBulkUnblockPlayersV1Params {
	var ()
	return &AdminBulkUnblockPlayersV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminBulkUnblockPlayersV1ParamsWithTimeout creates a new AdminBulkUnblockPlayersV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminBulkUnblockPlayersV1ParamsWithTimeout(timeout time.Duration) *AdminBulkUnblockPlayersV1Params {
	var ()
	return &AdminBulkUnblockPlayersV1Params{

		timeout: timeout,
	}
}

// NewAdminBulkUnblockPlayersV1ParamsWithContext creates a new AdminBulkUnblockPlayersV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminBulkUnblockPlayersV1ParamsWithContext(ctx context.Context) *AdminBulkUnblockPlayersV1Params {
	var ()
	return &AdminBulkUnblockPlayersV1Params{

		Context: ctx,
	}
}

// NewAdminBulkUnblockPlayersV1ParamsWithHTTPClient creates a new AdminBulkUnblockPlayersV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminBulkUnblockPlayersV1ParamsWithHTTPClient(client *http.Client) *AdminBulkUnblockPlayersV1Params {
	var ()
	return &AdminBulkUnblockPlayersV1Params{
		HTTPClient: client,
	}
}

/*AdminBulkUnblockPlayersV1Params contains all the parameters to send to the API endpoint
for the admin bulk unblock players v1 operation typically these are written to a http.Request
*/
type AdminBulkUnblockPlayersV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelsListUnblockPlayerRequest
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) WithTimeout(timeout time.Duration) *AdminBulkUnblockPlayersV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) WithContext(ctx context.Context) *AdminBulkUnblockPlayersV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) WithHTTPClient(client *http.Client) *AdminBulkUnblockPlayersV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminBulkUnblockPlayersV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) WithBody(body *lobbyclientmodels.ModelsListUnblockPlayerRequest) *AdminBulkUnblockPlayersV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) SetBody(body *lobbyclientmodels.ModelsListUnblockPlayerRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) WithNamespace(namespace string) *AdminBulkUnblockPlayersV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) WithUserID(userID string) *AdminBulkUnblockPlayersV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin bulk unblock players v1 params
func (o *AdminBulkUnblockPlayersV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminBulkUnblockPlayersV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
