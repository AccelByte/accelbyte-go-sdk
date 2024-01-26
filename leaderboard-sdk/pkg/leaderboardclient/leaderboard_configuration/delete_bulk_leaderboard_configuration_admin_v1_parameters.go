// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// NewDeleteBulkLeaderboardConfigurationAdminV1Params creates a new DeleteBulkLeaderboardConfigurationAdminV1Params object
// with the default values initialized.
func NewDeleteBulkLeaderboardConfigurationAdminV1Params() *DeleteBulkLeaderboardConfigurationAdminV1Params {
	var ()
	return &DeleteBulkLeaderboardConfigurationAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteBulkLeaderboardConfigurationAdminV1ParamsWithTimeout creates a new DeleteBulkLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteBulkLeaderboardConfigurationAdminV1ParamsWithTimeout(timeout time.Duration) *DeleteBulkLeaderboardConfigurationAdminV1Params {
	var ()
	return &DeleteBulkLeaderboardConfigurationAdminV1Params{

		timeout: timeout,
	}
}

// NewDeleteBulkLeaderboardConfigurationAdminV1ParamsWithContext creates a new DeleteBulkLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteBulkLeaderboardConfigurationAdminV1ParamsWithContext(ctx context.Context) *DeleteBulkLeaderboardConfigurationAdminV1Params {
	var ()
	return &DeleteBulkLeaderboardConfigurationAdminV1Params{

		Context: ctx,
	}
}

// NewDeleteBulkLeaderboardConfigurationAdminV1ParamsWithHTTPClient creates a new DeleteBulkLeaderboardConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteBulkLeaderboardConfigurationAdminV1ParamsWithHTTPClient(client *http.Client) *DeleteBulkLeaderboardConfigurationAdminV1Params {
	var ()
	return &DeleteBulkLeaderboardConfigurationAdminV1Params{
		HTTPClient: client,
	}
}

/*DeleteBulkLeaderboardConfigurationAdminV1Params contains all the parameters to send to the API endpoint
for the delete bulk leaderboard configuration admin v1 operation typically these are written to a http.Request
*/
type DeleteBulkLeaderboardConfigurationAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *leaderboardclientmodels.ModelsDeleteBulkLeaderboardsReq
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

// WithTimeout adds the timeout to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) WithTimeout(timeout time.Duration) *DeleteBulkLeaderboardConfigurationAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) WithContext(ctx context.Context) *DeleteBulkLeaderboardConfigurationAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) WithHTTPClient(client *http.Client) *DeleteBulkLeaderboardConfigurationAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) WithBody(body *leaderboardclientmodels.ModelsDeleteBulkLeaderboardsReq) *DeleteBulkLeaderboardConfigurationAdminV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) SetBody(body *leaderboardclientmodels.ModelsDeleteBulkLeaderboardsReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) WithNamespace(namespace string) *DeleteBulkLeaderboardConfigurationAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete bulk leaderboard configuration admin v1 params
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteBulkLeaderboardConfigurationAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
