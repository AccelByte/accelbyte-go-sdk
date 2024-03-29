// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_data

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

// NewCreateArchivedLeaderboardRankingDataV1HandlerParams creates a new CreateArchivedLeaderboardRankingDataV1HandlerParams object
// with the default values initialized.
func NewCreateArchivedLeaderboardRankingDataV1HandlerParams() *CreateArchivedLeaderboardRankingDataV1HandlerParams {
	var ()
	return &CreateArchivedLeaderboardRankingDataV1HandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateArchivedLeaderboardRankingDataV1HandlerParamsWithTimeout creates a new CreateArchivedLeaderboardRankingDataV1HandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateArchivedLeaderboardRankingDataV1HandlerParamsWithTimeout(timeout time.Duration) *CreateArchivedLeaderboardRankingDataV1HandlerParams {
	var ()
	return &CreateArchivedLeaderboardRankingDataV1HandlerParams{

		timeout: timeout,
	}
}

// NewCreateArchivedLeaderboardRankingDataV1HandlerParamsWithContext creates a new CreateArchivedLeaderboardRankingDataV1HandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateArchivedLeaderboardRankingDataV1HandlerParamsWithContext(ctx context.Context) *CreateArchivedLeaderboardRankingDataV1HandlerParams {
	var ()
	return &CreateArchivedLeaderboardRankingDataV1HandlerParams{

		Context: ctx,
	}
}

// NewCreateArchivedLeaderboardRankingDataV1HandlerParamsWithHTTPClient creates a new CreateArchivedLeaderboardRankingDataV1HandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateArchivedLeaderboardRankingDataV1HandlerParamsWithHTTPClient(client *http.Client) *CreateArchivedLeaderboardRankingDataV1HandlerParams {
	var ()
	return &CreateArchivedLeaderboardRankingDataV1HandlerParams{
		HTTPClient: client,
	}
}

/*CreateArchivedLeaderboardRankingDataV1HandlerParams contains all the parameters to send to the API endpoint
for the create archived leaderboard ranking data v1 handler operation typically these are written to a http.Request
*/
type CreateArchivedLeaderboardRankingDataV1HandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *leaderboardclientmodels.ModelsArchiveLeaderboardReq
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

// WithTimeout adds the timeout to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) WithTimeout(timeout time.Duration) *CreateArchivedLeaderboardRankingDataV1HandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) WithContext(ctx context.Context) *CreateArchivedLeaderboardRankingDataV1HandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) WithHTTPClient(client *http.Client) *CreateArchivedLeaderboardRankingDataV1HandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) WithBody(body *leaderboardclientmodels.ModelsArchiveLeaderboardReq) *CreateArchivedLeaderboardRankingDataV1HandlerParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) SetBody(body *leaderboardclientmodels.ModelsArchiveLeaderboardReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) WithNamespace(namespace string) *CreateArchivedLeaderboardRankingDataV1HandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create archived leaderboard ranking data v1 handler params
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreateArchivedLeaderboardRankingDataV1HandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
